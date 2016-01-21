json.array! @excds do |excd|
  json.array! @exmths.where(ex_det_cd: excd.ex_det_cd)
  json.array! @commoncds.where(det_cd: excd.ex_det_cd)
end
