SELECT
   dc.deal_id
  ,dc.change_time 
  ,f.option AS lost_reason    
FROM {{ ref('stg_deal_changes') }} dc
LEFT JOIN {{ ref('stg_fields') }} f ON dc.changed_field_key = f.field_key 
  AND dc.new_value = f.option_id 
WHERE changed_field_key = 'lost_reason'