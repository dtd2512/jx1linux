--Created by fangjieying 2003-5-17
--�����������Ź����ǡ�
--ѧ��Ź����Ǽ���
--���ţ�80�����Ͽ���
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(342)
	if(party ~= "tangmen") then							-- ��������
		Msg2Player("B�n nghi�n c�u Phi Ti�u Thu�t-C�u Cung Phi Tinh ���c n�a ng�y, nh�ng v�n ch�a l�nh ng� ���c g�. ")
		return 1
	elseif(GetLever < 80) then							-- �����ŵ�δ��80��
		Msg2Player("B�n nghi�n c�u Phi Ti�u Thu�t-C�u Cung Phi Tinh ���c n�a ng�y, l�nh ng� ���c r�t �t. ")
		return 1
	elseif(skill ~= -1) then							-- ��ѧ���ü���
		Msg2Player("B�n �� nghi�n c�u k� Phi Ti�u Thu�t-C�u Cung Phi Tinh, nh�ng v�n ch�a h�c ���c g�. ")
		return 1
	else
		AddMagic(342,1)
		Msg2Player("H�c ���c k� n�ng C�u Cung Phi Tinh. ")
		return 0
	end
end