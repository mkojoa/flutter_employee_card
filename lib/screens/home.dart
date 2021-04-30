import 'package:flutter/material.dart';
import 'package:melteckxtra/utils/services/api/employee_api.dart';
import 'file:///C:/Users/cyber/IdeaProjects/melteckxtra/lib/utils/settings/identity/auth.dart';
import 'package:melteckxtra/utils/services/storage.dart';

class MelteckHome extends StatefulWidget {
  @override
  _MelteckHomeState createState() => _MelteckHomeState();
}

class _MelteckHomeState extends State<MelteckHome> {
  List _employees = [];

  Auth _auth;
  LocalStorage _localStorage;
  EmployeeApi _employeeApi;

  @override
  void initState() {
    _auth = new Auth();
    _localStorage = new LocalStorage();
    _employeeApi = new EmployeeApi();
    super.initState();

    print(_auth.isLoggedIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MelteckXtra"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          _auth.isLoggedIn == true
              ? IconButton(
                  icon: const Icon(Icons.person),
                  tooltip: 'Details',
                  onPressed: null,
                )
              : new Container(),
          _auth.isLoggedIn == false
              ? IconButton(
                  icon: const Icon(Icons.lock),
                  tooltip: 'Login',
                  onPressed: _login,
                )
              : new Container(),
          _auth.isLoggedIn == true
              ? IconButton(
                  icon: const Icon(Icons.logout),
                  tooltip: 'Logout',
                  onPressed: _logout,
                )
              : new Container(),
        ],
      ),
      body: new Center(
        child: _auth.isLoggedIn == false
            ? const CircularProgressIndicator()
            : new ListView.builder(
                itemCount: _employees.length,
                padding: const EdgeInsets.all(14.5),
                itemBuilder: (BuildContext context, int position) {
                  return new Column(
                    children: <Widget>[
                      new Divider(height: 5.5),
                      new ListTile(
                          leading: new CircleAvatar(
                            child: new Text(
                              "${_employees[position]['lastName'][0].toString().toUpperCase()}",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 12.3),
                            ),
                            backgroundColor: Colors.blueAccent,
                          ),
                          title: new Text("${_employees[position]['lastName']}"),
                          //"""${_employees[position]['properties']['title']}"),
                          subtitle: new Text(
                            "This Employee was hired because",
                            //"""${_employees[position]['properties']['place']}",
                            style: new TextStyle(color: Colors.grey),
                          ),
                          onTap: () => {
                                debugPrint('kk')
                              } //_showDialogMessage(context, "${_employees[position]['properties']['title']}", "${_employees[position]['properties']['place']}"),
                          )
                    ],
                  );
                }),
      ),
    );
  }

  void _login() async {
    var tokenObj =
        await _auth.signInWithAutoCodeExchange(preferEphemeralSession: false);

    var details = await _auth.getUserDetails(tokenObj.accessToken);

    await _localStorage.persistSharedPrefData(
        'refresh_token', tokenObj.refreshToken);

    print(details);
    print(tokenObj.accessToken);
    print(tokenObj.idToken);

    //user details
    await _localStorage.persistSharedPrefData('user_info_sub', details['sub']);
    await _localStorage.persistSharedPrefData(
        'user_info_name', details['name']);
    await _localStorage.persistSharedPrefData(
        'user_info_given_name', details['given_name']);
    await _localStorage.persistSharedPrefData(
        'user_info_family_name', details['family_name']);
    await _localStorage.persistSharedPrefData(
        'user_info_email', details['email']);
    await _localStorage.persistSharedPrefData(
        'user_info_preferred_username', details['preferred_username']);

    var retData = await _employeeApi.getEmployeeDetails(tokenObj.accessToken);

    //set login to true
    setState(() {
      if (_localStorage.loadSharedPrefData('refresh_token') != null) {
        _auth.isLoggedIn = true;
      _employees.addAll(retData); //all employees
      } else {
        _auth.isLoggedIn = false;
      }
    });
  }

  void _logout() async {
    await _localStorage.removeSharedPrefData('refresh_token');
    setState(() {
      _auth.isLoggedIn = false;
    });
    print('Logged Out');
  }
}
