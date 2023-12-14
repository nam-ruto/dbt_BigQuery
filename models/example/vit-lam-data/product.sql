SELECT
  product.stock_item_id AS product_id,
  product.stock_item_name AS product_name,
  COALESCE(product.brand, 'Undefined') AS brand_name,
  product.supplier_id,
  supplier.supplier_name
FROM
  `vit-lam-data.wide_world_importers.warehouse__stock_items` product
INNER JOIN
  {{ ref('supplier') }} supplier
ON
  product.supplier_id = supplier.supplier_id