resource "oci_core_route_table_attachment" "application_lb_pub" {
  route_table_id = oci_core_route_table.application_public.id
  subnet_id      = oci_core_subnet.application_lb_pub.id
}

resource "oci_core_route_table_attachment" "application_app" {
  route_table_id = oci_core_route_table.application_private.id
  subnet_id      = oci_core_subnet.application_app.id
}

resource "oci_core_route_table_attachment" "application_db" {
  route_table_id = oci_core_route_table.application_private.id
  subnet_id      = oci_core_subnet.application_db.id
}

resource "oci_core_route_table_attachment" "application_infra" {
  route_table_id = oci_core_route_table.application_private.id
  subnet_id      = oci_core_subnet.application_infra.id
}
