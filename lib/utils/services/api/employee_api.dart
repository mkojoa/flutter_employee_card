import '../../config.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EmployeeApi {
  final String _employeeUri =
      '/Employee/SearchAllEmployeesWiz/$GOOGLE_COMPANY_ID';

  Future<List> getEmployeeDetails(String accessToken) async {
    // var baseUri = PAYROLL_URL + _employeeUri;
    //
    // final response = await http.get(
    //   Uri.parse(baseUri),
    //   headers: {'Authorization': 'Bearer $accessToken'},
    // );
    var dt = [
      {
        "id": "6bbe2fc4-fbff-43e8-93df-01c6bc55d51e",
        "firstName": "Rachel Antwi",
        "lastName": "Rachel Antwi",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1024",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "f961b0fc-a04e-4ff0-b9e3-66200b80957d",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "77d218e8-ec5e-4fae-8716-02b47a1dd107",
        "firstName": "Prisca Anokye",
        "lastName": "Prisca Anokye",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1013",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "36cdad10-746f-4365-b60f-672957e92c13",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "9a755a0b-5636-4dfc-9caa-05bb9a6a2391",
        "firstName": "Mavis Darpoh",
        "lastName": "Mavis Darpoh",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1021",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "1c2af337-7a77-4b3c-999c-8059cea595c8",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "897f7cd0-ebe6-4f33-aaed-07c58141b50b",
        "firstName": "Alex Djan",
        "lastName": "Alex Djan",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1049",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1150,
        "empOrgInfoId": "dfe65054-aa3f-4442-9f14-95a41294e046",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "54423b7b-2ba1-4adf-a932-0af8d439d687",
        "firstName": "Regina Braindt Coker",
        "lastName": "Regina Braindt Coker",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1042",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 835,
        "empOrgInfoId": "80cd591c-0025-4ce2-aac0-c05cb4528285",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "3dbc5cea-e0be-484a-b6a1-0c33cf5da596",
        "firstName": "Obiri Gyebi Ruby",
        "lastName": "Obiri Gyebi Ruby",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1011",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1363,
        "empOrgInfoId": "58b7b3d0-2af1-430d-bd73-3e059031ad89",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "5c7136fd-84a5-46ae-bc88-180c746f35d3",
        "firstName": "Rita Amoah",
        "lastName": "Rita Amoah",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1012",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "834b5bef-6955-4921-a874-8dc734a5b666",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "c4f2fc1a-8ce8-48af-afd9-1987b193d1e7",
        "firstName": "Deborah Essel",
        "lastName": "Deborah Essel",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1019",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "50e7ab33-a30e-469a-a824-cb4f1d23e366",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "d444ab17-4c14-41a1-8f43-1b0b820a691d",
        "firstName": "Margret Annan",
        "lastName": "Margret Annan",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1047",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 681,
        "empOrgInfoId": "c22b96aa-9bb3-451f-a048-104d8471a32d",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "04de35e0-d387-469e-8f47-1cf6b5229bf9",
        "firstName": "Isaac Baah",
        "lastName": "Isaac Baah",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1026",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "92626678-60a3-4bb6-9871-a3673afab21c",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "f3b80444-afb8-41c0-b4dc-26eeddaa3d78",
        "firstName": "Patience Njadoi",
        "lastName": "Patience Njadoi",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1032",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 681,
        "empOrgInfoId": "c6103cd6-7861-455c-b1ff-e8ee1005ba9a",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "6828f7ee-369f-4338-9e19-2de78170cfe7",
        "firstName": "Valentina Akua ",
        "lastName": "Valentina Akua Maison",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1009",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1150,
        "empOrgInfoId": "2103b9b7-8a7a-4e6e-b53f-ab4a174d6d9d",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "a1afcfc0-1cc0-4330-b24a-36bc9157e495",
        "firstName": "Ophelia Frimpong",
        "lastName": "Ophelia Frimpong",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1014",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "f7712658-6c58-4684-ad42-ce2bd4a51b09",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "a2f0d31d-cc83-4b19-b720-3969cc24dc68",
        "firstName": "Priscilla Christian",
        "lastName": "Priscilla Christian",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1036",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1045,
        "empOrgInfoId": "a8d35760-5551-49da-9590-d83eb1f67db2",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "a56298b6-b251-4e83-a055-437146315aba",
        "firstName": "Albert",
        "lastName": "Boasiako",
        "middleName": " ",
        "image": "",
        "otherName": " ",
        "empId": "test2021",
        "hireDate": "2021-03-01T00:00:00",
        "salary": 0,
        "empOrgInfoId": "b06c471b-4f0a-4bc5-94fc-46e16317f58f",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "hcmlite@gmail.com                                                                                   ",
        "basedOnSalary": null,
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "29abd438-c765-40a7-9a12-5e2ca143a1fe"
      },
      {
        "id": "515407d9-2a14-43d9-b2cc-4df59ab8fade",
        "firstName": "Eric Afenah",
        "lastName": "Eric Afenah",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1048",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1150,
        "empOrgInfoId": "fe87b498-8ea4-4619-b7a5-7fab961a17e0",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "bd18e884-ad02-436a-98fd-4fbf4d3c91bd",
        "firstName": "James Berima",
        "lastName": "James Berima",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1046",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 681,
        "empOrgInfoId": "c393a4b3-2387-4039-83ea-f15faaec15d6",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "6fd93588-d097-45be-b227-50a944a5fc13",
        "firstName": "Ebenezer ",
        "lastName": "Ebenezer Lawson",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1008",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1996,
        "empOrgInfoId": "fb35176a-836a-4f9e-b3ab-fe8a100ca6f3",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "ede9450a-af22-4f49-b784-556d030fadc5",
        "firstName": "Samuel Offei Korenteng",
        "lastName": "Samuel Offei Korenteng",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1035",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1045,
        "empOrgInfoId": "ebc8c5bf-ad2f-4b5c-bd48-7f5c02b1c8b5",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "3d626d8a-158c-48f7-bcce-590cc452d2af",
        "firstName": "Eunice Marmah",
        "lastName": "Eunice Marmah",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1041",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "ccc776e6-ac4c-41e1-a3e6-4439b29a8af8",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "880c6517-a35b-442b-a71d-5b45a32b1dcf",
        "firstName": "Ali Yemoh Odoi",
        "lastName": "Ali Yemoh Odoi",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1029",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "2dfb43a9-fa86-4a6d-87f7-11828fc4329c",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "425ca327-8b02-45ee-9f03-641c11c487a9",
        "firstName": "Sandra Akosua Donkor",
        "lastName": "Sandra Akosua Donkor",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1015",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "5a0068ee-c93a-48bc-8a1f-297c980a1a67",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "16314f08-6376-4aa9-9dc7-6a2387b9440a",
        "firstName": "David ",
        "lastName": "David Zanu",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1006",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 10,
        "empOrgInfoId": "ac32162a-0956-43b0-890f-d0aa3bba5789",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "106ef594-5bc1-4027-acc0-6d774cd298e5",
        "firstName": "No Name Man",
        "lastName": "No Name Man",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1051",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 627,
        "empOrgInfoId": "7e10d931-0a85-4989-858c-e1290a1f7d7e",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "4da5f277-c06b-4f56-a328-7adf5d715510",
        "firstName": "Emmanuel Djahlin",
        "lastName": "Emmanuel Djahlin",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1034",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1256,
        "empOrgInfoId": "bf986c97-6650-4e12-852b-046bfbe08f4d",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "f834788f-8fa5-4fc6-83d6-7eb39ddb3fa4",
        "firstName": "Asante Dorothy Nyama",
        "lastName": "Asante Dorothy Nyama",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1038",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "abad7588-f621-499b-831e-8546acfce208",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "cbfd032d-d87d-4cc9-bb9b-83bc030fbc72",
        "firstName": " Babri",
        "lastName": "Ali Babri",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1003",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 10,
        "empOrgInfoId": "a90283c1-2d8d-4d06-acd6-1915dc714d65",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "bf9dea98-90f3-46e9-8bbc-a5716b91c25d",
        "firstName": "Agnes Arthur",
        "lastName": "Agnes Arthur",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1044",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 835,
        "empOrgInfoId": "7132a4b8-4700-42b0-a00e-bab1730b5e9b",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "271e9b07-c38c-4d91-8e52-a5de7971d846",
        "firstName": "Gifty Naa Kwarley Quartey",
        "lastName": "Gifty Naa Kwarley Quartey",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1037",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "5e02897f-8498-427e-9cb1-e929ec7ef056",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "5a4f451e-e0fd-45a9-9e20-a8cc83e80102",
        "firstName": "Solomon",
        "lastName": "Nii Ayi Solomon",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1001",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 10,
        "empOrgInfoId": "0e6fe5a1-8498-4f4e-912f-f3c9f7d50c14",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "71cd563d-376c-48ca-8884-abef74c1df35",
        "firstName": "Maxwell Amanya",
        "lastName": "Maxwell Amanya",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1030",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 681,
        "empOrgInfoId": "c7c129a7-469b-4ced-a1e0-61020bc33088",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "715fdd8e-e6d1-43b1-84c2-ad762f5324b4",
        "firstName": "Abeiku Burns",
        "lastName": "Abeiku Burns",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1025",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "7fc55d0c-ac8e-4e51-8cac-efee478c0a5a",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "5a0460bf-6096-411d-ba02-b272f46cae46",
        "firstName": "Bernice Ansong",
        "lastName": "Bernice Ansong",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1022",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "47e16583-683c-46a4-9948-d3a39f9e49d8",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "6389c490-f5a2-4c3f-bac4-bb92b7f13a61",
        "firstName": "Faustina Ekwam",
        "lastName": "Faustina Ekwam",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1040",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "8417e4f2-b11c-49a3-888e-d16e55efb32c",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "30aed8ee-69c7-4218-93f8-cd0fb5815675",
        "firstName": "Cecelia",
        "lastName": "Cecelia Debrah",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1004",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1679,
        "empOrgInfoId": "6de94c08-0185-4231-8175-8cd9dbd7ef4c",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "e6f2610a-a809-46fc-9177-d78ed5cecefe",
        "firstName": "Daniella Kuagbedzi",
        "lastName": "Daniella Kuagbedzi",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1018",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "6cb07e4e-2693-4b25-a807-ef2533d27fa8",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "f253df7d-e5bf-464a-8967-ddbc4d626b0e",
        "firstName": "Cynthia Akorfa Afua ",
        "lastName": "Cynthia Akorfa Afua Quarcoo",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1010",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1150,
        "empOrgInfoId": "ea07ef5c-43cd-4c3e-b22d-7cc5aa312446",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "d31359ee-ced1-4ea6-a709-e08e0a7915ee",
        "firstName": "Richmond Agyemang",
        "lastName": "Richmond Agyemang",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1020",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "f2c12b4e-3998-4d88-99a1-ac39e9236102",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "2a4f0fef-7a90-4fe8-b45d-eed77d5de930",
        "firstName": "Prince Laryea Adjei",
        "lastName": "Prince Laryea Adjei",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1050",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "b2913ab9-71e4-46bc-bf36-64f7642cbf4e",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "fc0c7521-9cc7-46d7-bac0-f45ee83b3ef3",
        "firstName": "Appeadua Joyce",
        "lastName": "Appeadua Joyce",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1039",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 940,
        "empOrgInfoId": "7df13003-75fb-4f52-a846-abfc396e8970",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "1d10f263-6ceb-4f9f-817f-f65a9ce82e66",
        "firstName": "Dickson ",
        "lastName": "Dickson Darkey",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1007",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 1679,
        "empOrgInfoId": "40830b2b-a365-48be-aae8-89c00802bdae",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "292e9211-6ba0-4113-bdea-f6f4108ecb0c",
        "firstName": "Rose Addae",
        "lastName": "Rose Addae",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1023",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "b991720d-933a-483f-99af-ef174a9d44fc",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "3ebb0fad-1870-4633-95c7-fc98f1b4ffc0",
        "firstName": "Rita Gyau",
        "lastName": "Rita Gyau",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1045",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 835,
        "empOrgInfoId": "60e7348b-39f5-4581-80cb-50b06a4b42de",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "815ef88e-01db-4f7c-aa01-fd665ca9491e",
        "firstName": "Gabriel Kofi Bettey",
        "lastName": "Gabriel Kofi Bettey",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1017",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 783,
        "empOrgInfoId": "60a36d6d-f85c-4b0a-928e-d7a101b0f2c6",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      },
      {
        "id": "bad076b6-e087-4e57-b5a9-fea6ff0327c4",
        "firstName": "Esther Anku",
        "lastName": "Esther Anku",
        "middleName": "",
        "image": "",
        "otherName": "",
        "empId": "1031",
        "hireDate": "2010-07-03T00:00:00",
        "salary": 681,
        "empOrgInfoId": "c45ae39c-d6ec-45d5-ab5a-6525975c5955",
        "userId": "caf8c94c-19b9-4166-9b5e-08d8df14a575",
        "empOrgInfoStatusId": "fc1cf530-d962-4e5a-b82f-e862b5e2018b",
        "email": "                                                                                                    ",
        "basedOnSalary": "1",
        "departmentId": "3b639562-4f71-4e5f-900d-8351ecb92a78",
        "departmentName": "Administration",
        "employeeTypeId": "dcc0be71-8bf8-4a76-a35b-8b80f31aae38"
      }
    ];

    return dt;
    // return (response.statusCode == 200)
    //     ? jsonDecode(response.body)
    //     : throw Exception('Failed to get employee details => ${response.statusCode}');
  }
}