/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = module.project.project_id
}

output "sa_key" {
  value     = google_service_account_key.int_test.private_key
  sensitive = true
}

output "folder1" {
  value = element(split("/", google_folder.folder1.id), length(split("/", google_folder.folder1.id)) - 1)
}

output "folder2" {
  value = element(split("/", google_folder.folder2.id), length(split("/", google_folder.folder2.id)) - 1)
}

output "folder3" {
  value = element(split("/", google_folder.folder3.id), length(split("/", google_folder.folder3.id)) - 1)
}

output "org_id" {
  value = var.org_id
}
