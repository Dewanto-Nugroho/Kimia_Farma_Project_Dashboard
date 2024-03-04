SELECT 

	kf_ft.transaction_id AS transaction_id ,
	kf_ft.date AS 'date',
	kf_ft.branch_id,
	kf_kc.branch_name,
	kf_kc.kota,
	kf_kc.provinsi,
	kf_kc.rating AS 'rating_cabang',
	kf_ft.customer_name,
	kf_ft.product_id,
	kf_pr.product_name,
	kf_pr.price,
	kf_ft.discount_percentage,


	CASE 
        WHEN kf_pr.price <= 50000 THEN 10 
        WHEN kf_pr.price > 50000 AND kf_pr.price <= 100000 THEN 15 
        WHEN kf_pr.price > 100000 AND kf_pr.price <= 300000 THEN 20 
        WHEN kf_pr.price > 300000 AND kf_pr.price <= 500000 THEN 25 
        WHEN kf_pr.price > 500000 THEN 30 
    END AS Percentage_gross_Laba,
	ROUND(kf_pr.price-(kf_pr.price*kf_ft.discount_percentage),2) AS 'Nett_Sales',


	ROUND(CASE 
        WHEN kf_pr.price <= 50000 THEN (kf_pr.price*0.10) - (kf_pr.price * kf_ft.discount_percentage)
        WHEN kf_pr.price > 50000 AND kf_pr.price <= 100000 THEN (kf_pr.price*0.15) - (kf_pr.price * kf_ft.discount_percentage) 
        WHEN kf_pr.price > 100000 AND kf_pr.price <= 300000 THEN (kf_pr.price*0.20) - (kf_pr.price * kf_ft.discount_percentage) 
        WHEN kf_pr.price > 300000 AND kf_pr.price <= 500000 THEN (kf_pr.price*0.25) - (kf_pr.price * kf_ft.discount_percentage) 
        WHEN kf_pr.price > 500000 THEN (kf_pr.price*0.30) - (kf_pr.price * kf_ft.discount_percentage)
	END,2) AS NET_Profit


INTO Kimia_Farma

FROM kf_final_transaction AS kf_ft
left join kf_kantor_cabang AS kf_kc
on kf_ft.branch_id = kf_kc.branch_id
left join kf_product AS kf_pr
on kf_ft.product_id = kf_pr.product_id
