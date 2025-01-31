# Talend API Documentation

## Overview
Talend offers a suite of APIs designed for seamless integration, management, and monitoring of data processes within its cloud environment. This documentation provides insights into key API categories, endpoints, and use cases.

---

## Table of Contents
- [Orchestration](#orchestration)
- [Connection API](#connection-api)
- [Tasks API](#tasks-api)
- [Artifacts API](#artifacts-api)
- [Environments](#environments)
- [Workspaces](#workspaces)
- [Monitoring Task Runs](#monitoring-task-runs)
- [Execution Logs](#execution-logs)
- [Data Model Overview](#data-model-overview)

---

## Orchestration
Manage all **Artifacts, Tasks, Plans, Schedules, Environments, Workspaces, Promotions,** and other related resources.

---

## Connection API
### Overview
The Connection API manages connections used by datasets in Talend Cloud. Connections store configurations and credentials for accessing external data sources such as databases, file systems, and APIs.

### Key Components
- **UpdateConnectionRequest** – Update an existing connection.
- **CreateConnectionRequest** – Create a new connection.
- **ConnectionParameter** – Defines host, username, password, etc.
- **ConnectionDetails** – Contains full connection information.
- **PageConnection** – Paginated response of connections.

### API Endpoints
- **Create a Connection** → `POST /orchestration/connections`
- **List Available Connections** → `GET /orchestration/connections`
- **Update a Connection** → `PUT /orchestration/connections/{connectionId}`
- **Delete a Connection** → `DELETE /orchestration/connections/{connectionId}`
- **Get Connection Details** → `GET /orchestration/connections/{connectionId}`

---

## Tasks API
### Use Case
Retrieve run metrics for a specific task without downloading logs, allowing efficient monitoring.

### Prerequisites
- **Access Token** – Generate a personal or service account token.
- **Permissions** – User must have Viewer permission for the workspace containing the task.

### API Endpoints
- **Retrieve Task Executions** → `GET /processing/executables/tasks/{taskId}/executions`

**Headers:**
```json
{
  "Content-Type": "application/json",
  "Authorization": "Bearer <your_token>"
}
```

---

## Artifacts API
### Overview
Artifacts represent deployable components such as **jobs, tasks, or services** in Talend.

### API Endpoints
- **List Available Artifacts** → `GET /orchestration/artifacts`
- **Get Artifact by ID** → `GET /orchestration/artifacts/{artifactId}`
- **Delete Artifact by ID** → `DELETE /orchestration/artifacts/{artifactId}`
- **Manage Artifact Versions** → `GET /orchestration/artifacts/{artifactId}/versions/{version}`

### Use Case
Automate deployment of data integration jobs from **development to production** using the Orchestration API.

---

## Environments
### Overview
Logical grouping of configurations and execution contexts.

### API Endpoints
- **Create Environment** → `POST /orchestration/environments`
- **List Environments** → `GET /orchestration/environments`
- **Update Environment** → `PUT /orchestration/environments/{Id}`
- **Delete Environment** → `DELETE /orchestration/environments/{Id}`

---

## Workspaces
### Overview
Organizational units grouping related projects and resources.

### API Endpoints
- **Create a Workspace** → `POST /orchestration/workspaces`
- **List Workspaces** → `GET /orchestration/workspaces`
- **Update a Workspace** → `PUT /orchestration/workspaces/{id}`
- **Delete a Workspace** → `DELETE /orchestration/workspaces/{id}`

---

## Monitoring Task Runs
### Use Case
Retrieve logs for task runs within a specific period, filtering by status and tags for efficient monitoring.

### API Endpoints
- **Retrieve Task Executions** → `POST /processing/executables/tasks/executions`
- **Get Execution Logs** → `GET /monitoring/executions/{runId}/log`

---

## Execution Logs
### Overview
Talend's Execution Logs API provides detailed logs for task runs to aid troubleshooting.

### API Endpoints
- **Retrieve Execution Logs** → `GET /monitoring/executions/{id}/logs`

---

## Data Model Overview
### Entities
- **Tasks** – Executable tasks in Talend.
- **Connections** – Reusable configurations for external systems.
- **Artifacts** – Deployable units (e.g., jobs, services, data pipelines).

### Relationships
- **Tasks ↔ Connections** – A task can use multiple connections, and a connection may be used by multiple tasks.
- **Tasks ↔ Artifacts** – A task links to a single artifact, but an artifact may be referenced by multiple tasks.

---


For more details, visit [Talend API Documentation](https://api.eu.cloud.talend.com/).
