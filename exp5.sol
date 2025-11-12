// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeRecords {
    // Define structure for Employee
    struct Employee {
        int empid;
        string name;
        string department;
        string designation;
    }

    // Dynamic array to store employee details
    Employee[] private emps;

    // Function to add employee details
    function addEmployee(
        int empid,
        string memory name,
        string memory department,
        string memory designation
    ) public {
        Employee memory e = Employee(empid, name, department, designation);
        emps.push(e);
    }

    // Function to get details of an employee by ID
    function getEmployee(int empid)
        public
        view
        returns (
            string memory,
            string memory,
            string memory
        )
    {
        for (uint i = 0; i < emps.length; i++) {
            Employee memory e = emps[i];
            // Looks for a matching employee id
            if (e.empid == empid) {
                return (e.name, e.department, e.designation);
            }
        }
        // If employee ID not found, return "Not Found"
        return ("Not Found", "Not Found", "Not Found");
    }
}
