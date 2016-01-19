json.array! @extys do |exty|
  json.array! @commoncds.where(det_cd: exty.ex_det_cd), :cd_nm
end
