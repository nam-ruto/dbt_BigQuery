SELECT
  supplier_id,
  UPPER(supplier_name) AS supplier_name
FROM
  `vit-lam-data.wide_world_importers.purchasing__suppliers`