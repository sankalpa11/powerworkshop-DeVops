# PowerWorkshop DevOps


##TASK- 1

## Step-by-Step Documentation

### 1. Install Docker
- Download and install Docker Desktop from [Docker](https://www.docker.com/products/docker-desktop).
- Verify installation with `docker --version` and `docker-compose --version`.

### 2. Clone Repository
- `git clone https://github.com/silarhi/php-hello-world.git`
- `cd php-hello-world`

### 3. Create Dockerfile
- Add the Dockerfile content as described.

### 4. Build and Push Docker Image
- Build: `docker build -t sankalpa111/php-hello-world:latest .`
- Push: `docker push sankalpa111/php-hello-world:latest`

### 5. Create Docker Compose File
- Add `Docker-compose.yml` content as described.

### 6. Run Docker Compose
- `docker-compose up`

### 7. Verify Application
- Open [http://localhost:8080](http://localhost:8080)

### Screenshots

##TASK 2

# Task II: GitHub Actions Workflow

## Overview

This repository includes a GitHub Actions workflow that prints "Hello, World!" to the console whenever a push event occurs on the `main` branch. This workflow is defined in the GitHub Actions configuration file located in `.github/workflows/test.yml`.

## Steps to Reproduce

### 1. **Setting Up GitHub Actions Workflow**

1. **Create a GitHub Repository**:
   - Go to [GitHub](https://github.com/).
   - Create a new public repository named `powerworkshop-DevOps` (if not already created).

2. **Create GitHub Actions Directory**:
   - In the root of your repository, create the directory `.github/workflows`:
     ```sh
     mkdir -p .github/workflows
     ```

3. **Create Workflow File**:
   - Inside `.github/workflows`, create a file named `test.yml`:
     ```sh
     touch .github/workflows/test.yml
     ```

4. **Configure the Workflow**:
   - Edit the `test.yml` file to include the following configuration:

     ```yaml
     name: Print Hello World

     on:
       push:
         branches:
           - main

     jobs:
       build:
         runs-on: ubuntu-latest

         steps:
           - name: Checkout code
             uses: actions/checkout@v2

           - name: Print Hello World
             run: echo "Hello, World!"
     ```

   - **Explanation**:
     - `name`: Names the workflow "Print Hello World".
     - `on`: Specifies that the workflow will run on `push` events to the `main` branch.
     - `jobs`: Defines a job named `build` that runs on the `ubuntu-latest` environment.
     - `steps`: Includes steps to check out the code and print "Hello, World!" to the console.

5. **Commit and Push Changes**:
   - Add the workflow file to the repository:
     ```sh
     git add .github/workflows/test.yml
     ```
   - Commit the changes:
     ```sh
     git commit -m "Add GitHub Actions workflow to print Hello World"
     ```
   - Push the changes to the `main` branch:
     ```sh
     git push origin main
     ```

### 2. **Verify the Workflow**

1. **Check Actions Tab**:
   - Go to the **"Actions"** tab in your GitHub repository.
   - You should see a new workflow run triggered by your recent push. Click on the workflow run to view the details.

2. **Review Logs**:
   - In the workflow run details, navigate to the **"Logs"** section.
   - Verify that the step named **"Print Hello World"** outputs "Hello, World!" as expected.

## Troubleshooting

- **Workflow Not Triggering**:
  - Ensure that the push event was made to the `main` branch. Check your branch name and adjust the `branches` section in the workflow file if necessary.

![alt text](https://file%2B.vscode-resource.vscode-cdn.net/Users/sankalpaaryal/php-hello-world/Screenshot%202024-07-28%20at%2012.39.10.png?version%3D1722155537082)


![alt text](https://file%2B.vscode-resource.vscode-cdn.net/Users/sankalpaaryal/php-hello-world/src/Screenshot%202024-07-28%20at%2014.20.56.png?version%3D1722156169199)

![alt text](https://file%2B.vscode-resource.vscode-cdn.net/Users/sankalpaaryal/php-hello-world/Screenshot%202024-07-28%20at%2014.19.24.png?version%3D1722156177565)