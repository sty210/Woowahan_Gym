# json.id @commoncd.id
# json.main_cd @commoncd.main_cd
# json.det_cd @commoncd.det_cd
# json.cd_nm @commoncd.cd_nm
# json.created_at @commoncd.created_at

json.array! @excds do |excd|
  json.array! @exmths.where(ex_det_cd: excd.ex_det_cd), :ex_mth_img
end
