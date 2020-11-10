locals {
  workflow = file("${path.module}/../../workflow/workflows/IslandCompare_unpacked_w._BLAST.ga")
}

resource "galaxy_stored_workflow" "islandcompare" {
  json = local.workflow
  published = true
}