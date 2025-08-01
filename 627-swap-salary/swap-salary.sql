update salary set
sex=case
 when sex='m' then 'f'
 when sex='f' then 'm'
else sex
end
where sex='m' or sex='f';
