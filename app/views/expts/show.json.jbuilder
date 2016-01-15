json.array! @expts do |expt|
  json.array! @commoncds.where(det_cd: expt.ex_det_cd), :cd_nm
end
