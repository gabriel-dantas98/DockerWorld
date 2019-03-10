workflow "main" {
  on = "push"
  resolves = "push_docker_hub"
}

action "build_and_tag_image" {
  uses = "docker://gabsdevops/docker-cicd"
  runs = "ls"
}

action "push_docker_hub" {
  needs = "build_and_tag_image"
  uses = "docker://gabsdevops/docker-cicd"
}
