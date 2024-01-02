#!/usr/bin/python3
"""
This script will use the REST API, take an employee's ID,
and return their information on the progress of their TO-DO list
"""

import json
import requests
from sys import argv


def get_employee_todo_progress(employee_id):
    base_url = 'https://jsonplaceholder.typicode.com/users'
    todos_url = f'{base_url}/{employee_id}/todos'
    employee_info_url = f'{base_url}/{employee_id}'

    try:
        todos_response = requests.get(todos_url)
        todos_response.raise_for_status()

        employee_info_response = requests.get(employee_info_url)
        employee_info_response.raise_for_status()
    except requests.exceptions.RequestException as e:
        print(f"Error fetching data: {e}")
        return

    todos_data = todos_response.json()
    employee_name = employee_info_response.json()['name']

    completed_tasks = [task for task in todos_data if task['completed']]
    total_tasks = len(todos_data)

    print("Employee {} is done with tasks({}/{}):".format(
        employee_name, len(completed_tasks), total_tasks))

    for task in completed_tasks:
        print("\t " + task.get('title'))


if __name__ == "__main__":
    if len(argv) != 2:
        print("Usage: {} <employee_id>".format(argv[0]))
    else:
        employee_id = argv[1]
        if not employee_id.isdigit():
            print("Employee ID must be an integer.")
        else:
            get_employee_todo_progress(int(employee_id))
