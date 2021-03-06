-------------------------------------------------------------------------------
-- Title      : negative disparity rom
-- Project    : 
-------------------------------------------------------------------------------
-- File       : dec_8_10_rdn.vhd
-- Author     : amr  <amr@laptop>
-- Company    : 
-- Created    : 2014-10-15
-- Last update: 16-10-2014
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: a negative disparity rom
-------------------------------------------------------------------------------
-- Copyright (c) 2014 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2014-10-15  1.0      amr     Created
-------------------------------------------------------------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity dec_8_10_rdn is
  
  port (
    clk     : in  std_logic;
    address : in  std_logic_vector(9 downto 0);
    rde     : in  std_logic;
    dout    : out std_logic_vector(7 downto 0);
    invalid : out std_logic
    );

end dec_8_10_rdn;


architecture behav of dec_8_10_rdn is

  signal vROM_reg : std_logic_vector(8 downto 0) := (others => '0');
  signal vROM_tmp : std_logic_vector(8 downto 0);
  
begin  -- behav

  dout    <= vROM_reg(7 downto 0);
  invalid <= vROM_reg(8);

  clk_pr : process(clk) is
  begin
    if rising_edge(clk) then
      if rde = '1' then
        vROM_reg <= vROM_tmp;
      end if;
    end if;
  end process;

  process(address) is
  begin
    case address is

      when "10" & x"74" => vROM_tmp <= std_logic_vector(to_unsigned(0, 9));
      when "01" & x"d4" => vROM_tmp <= std_logic_vector(to_unsigned(1, 9));
      when "10" & x"d4" => vROM_tmp <= std_logic_vector(to_unsigned(2, 9));
      when "11" & x"1b" => vROM_tmp <= std_logic_vector(to_unsigned(3, 9));
      when "11" & x"54" => vROM_tmp <= std_logic_vector(to_unsigned(4, 9));
      when "10" & x"9b" => vROM_tmp <= std_logic_vector(to_unsigned(5, 9));
      when "01" & x"9b" => vROM_tmp <= std_logic_vector(to_unsigned(6, 9));
      when "11" & x"8b" => vROM_tmp <= std_logic_vector(to_unsigned(7, 9));
      when "11" & x"94" => vROM_tmp <= std_logic_vector(to_unsigned(8, 9));
      when "10" & x"5b" => vROM_tmp <= std_logic_vector(to_unsigned(9, 9));
      when "01" & x"5b" => vROM_tmp <= std_logic_vector(to_unsigned(10, 9));
      when "11" & x"4b" => vROM_tmp <= std_logic_vector(to_unsigned(11, 9));
      when "00" & x"db" => vROM_tmp <= std_logic_vector(to_unsigned(12, 9));
      when "10" & x"cb" => vROM_tmp <= std_logic_vector(to_unsigned(13, 9));
      when "01" & x"cb" => vROM_tmp <= std_logic_vector(to_unsigned(14, 9));
      when "01" & x"74" => vROM_tmp <= std_logic_vector(to_unsigned(15, 9));
      when "01" & x"b4" => vROM_tmp <= std_logic_vector(to_unsigned(16, 9));
      when "10" & x"3b" => vROM_tmp <= std_logic_vector(to_unsigned(17, 9));
      when "01" & x"3b" => vROM_tmp <= std_logic_vector(to_unsigned(18, 9));
      when "11" & x"2b" => vROM_tmp <= std_logic_vector(to_unsigned(19, 9));
      when "00" & x"bb" => vROM_tmp <= std_logic_vector(to_unsigned(20, 9));
      when "10" & x"ab" => vROM_tmp <= std_logic_vector(to_unsigned(21, 9));
      when "01" & x"ab" => vROM_tmp <= std_logic_vector(to_unsigned(22, 9));
      when "11" & x"a4" => vROM_tmp <= std_logic_vector(to_unsigned(23, 9));
      when "11" & x"34" => vROM_tmp <= std_logic_vector(to_unsigned(24, 9));
      when "10" & x"6b" => vROM_tmp <= std_logic_vector(to_unsigned(25, 9));
      when "01" & x"6b" => vROM_tmp <= std_logic_vector(to_unsigned(26, 9));
      when "11" & x"64" => vROM_tmp <= std_logic_vector(to_unsigned(27, 9));
      when "00" & x"eb" => vROM_tmp <= std_logic_vector(to_unsigned(28, 9));
      when "10" & x"e4" => vROM_tmp <= std_logic_vector(to_unsigned(29, 9));
      when "01" & x"e4" => vROM_tmp <= std_logic_vector(to_unsigned(30, 9));
      when "10" & x"b4" => vROM_tmp <= std_logic_vector(to_unsigned(31, 9));
      when "10" & x"79" => vROM_tmp <= std_logic_vector(to_unsigned(32, 9));
      when "01" & x"d9" => vROM_tmp <= std_logic_vector(to_unsigned(33, 9));
      when "10" & x"d9" => vROM_tmp <= std_logic_vector(to_unsigned(34, 9));
      when "11" & x"19" => vROM_tmp <= std_logic_vector(to_unsigned(35, 9));
      when "11" & x"59" => vROM_tmp <= std_logic_vector(to_unsigned(36, 9));
      when "10" & x"99" => vROM_tmp <= std_logic_vector(to_unsigned(37, 9));
      when "01" & x"99" => vROM_tmp <= std_logic_vector(to_unsigned(38, 9));
      when "11" & x"89" => vROM_tmp <= std_logic_vector(to_unsigned(39, 9));
      when "11" & x"99" => vROM_tmp <= std_logic_vector(to_unsigned(40, 9));
      when "10" & x"59" => vROM_tmp <= std_logic_vector(to_unsigned(41, 9));
      when "01" & x"59" => vROM_tmp <= std_logic_vector(to_unsigned(42, 9));
      when "11" & x"49" => vROM_tmp <= std_logic_vector(to_unsigned(43, 9));
      when "00" & x"d9" => vROM_tmp <= std_logic_vector(to_unsigned(44, 9));
      when "10" & x"c9" => vROM_tmp <= std_logic_vector(to_unsigned(45, 9));
      when "01" & x"c9" => vROM_tmp <= std_logic_vector(to_unsigned(46, 9));
      when "01" & x"79" => vROM_tmp <= std_logic_vector(to_unsigned(47, 9));
      when "01" & x"b9" => vROM_tmp <= std_logic_vector(to_unsigned(48, 9));
      when "10" & x"39" => vROM_tmp <= std_logic_vector(to_unsigned(49, 9));
      when "01" & x"39" => vROM_tmp <= std_logic_vector(to_unsigned(50, 9));
      when "11" & x"29" => vROM_tmp <= std_logic_vector(to_unsigned(51, 9));
      when "00" & x"b9" => vROM_tmp <= std_logic_vector(to_unsigned(52, 9));
      when "10" & x"a9" => vROM_tmp <= std_logic_vector(to_unsigned(53, 9));
      when "01" & x"a9" => vROM_tmp <= std_logic_vector(to_unsigned(54, 9));
      when "11" & x"a9" => vROM_tmp <= std_logic_vector(to_unsigned(55, 9));
      when "11" & x"39" => vROM_tmp <= std_logic_vector(to_unsigned(56, 9));
      when "10" & x"69" => vROM_tmp <= std_logic_vector(to_unsigned(57, 9));
      when "01" & x"69" => vROM_tmp <= std_logic_vector(to_unsigned(58, 9));
      when "11" & x"69" => vROM_tmp <= std_logic_vector(to_unsigned(59, 9));
      when "00" & x"e9" => vROM_tmp <= std_logic_vector(to_unsigned(60, 9));
      when "10" & x"e9" => vROM_tmp <= std_logic_vector(to_unsigned(61, 9));
      when "01" & x"e9" => vROM_tmp <= std_logic_vector(to_unsigned(62, 9));
      when "10" & x"b9" => vROM_tmp <= std_logic_vector(to_unsigned(63, 9));
      when "10" & x"75" => vROM_tmp <= std_logic_vector(to_unsigned(64, 9));
      when "01" & x"d5" => vROM_tmp <= std_logic_vector(to_unsigned(65, 9));
      when "10" & x"d5" => vROM_tmp <= std_logic_vector(to_unsigned(66, 9));
      when "11" & x"15" => vROM_tmp <= std_logic_vector(to_unsigned(67, 9));
      when "11" & x"55" => vROM_tmp <= std_logic_vector(to_unsigned(68, 9));
      when "10" & x"95" => vROM_tmp <= std_logic_vector(to_unsigned(69, 9));
      when "01" & x"95" => vROM_tmp <= std_logic_vector(to_unsigned(70, 9));
      when "11" & x"85" => vROM_tmp <= std_logic_vector(to_unsigned(71, 9));
      when "11" & x"95" => vROM_tmp <= std_logic_vector(to_unsigned(72, 9));
      when "10" & x"55" => vROM_tmp <= std_logic_vector(to_unsigned(73, 9));
      when "01" & x"55" => vROM_tmp <= std_logic_vector(to_unsigned(74, 9));
      when "11" & x"45" => vROM_tmp <= std_logic_vector(to_unsigned(75, 9));
      when "00" & x"d5" => vROM_tmp <= std_logic_vector(to_unsigned(76, 9));
      when "10" & x"c5" => vROM_tmp <= std_logic_vector(to_unsigned(77, 9));
      when "01" & x"c5" => vROM_tmp <= std_logic_vector(to_unsigned(78, 9));
      when "01" & x"75" => vROM_tmp <= std_logic_vector(to_unsigned(79, 9));
      when "01" & x"b5" => vROM_tmp <= std_logic_vector(to_unsigned(80, 9));
      when "10" & x"35" => vROM_tmp <= std_logic_vector(to_unsigned(81, 9));
      when "01" & x"35" => vROM_tmp <= std_logic_vector(to_unsigned(82, 9));
      when "11" & x"25" => vROM_tmp <= std_logic_vector(to_unsigned(83, 9));
      when "00" & x"b5" => vROM_tmp <= std_logic_vector(to_unsigned(84, 9));
      when "10" & x"a5" => vROM_tmp <= std_logic_vector(to_unsigned(85, 9));
      when "01" & x"a5" => vROM_tmp <= std_logic_vector(to_unsigned(86, 9));
      when "11" & x"a5" => vROM_tmp <= std_logic_vector(to_unsigned(87, 9));
      when "11" & x"35" => vROM_tmp <= std_logic_vector(to_unsigned(88, 9));
      when "10" & x"65" => vROM_tmp <= std_logic_vector(to_unsigned(89, 9));
      when "01" & x"65" => vROM_tmp <= std_logic_vector(to_unsigned(90, 9));
      when "11" & x"65" => vROM_tmp <= std_logic_vector(to_unsigned(91, 9));
      when "00" & x"e5" => vROM_tmp <= std_logic_vector(to_unsigned(92, 9));
      when "10" & x"e5" => vROM_tmp <= std_logic_vector(to_unsigned(93, 9));
      when "01" & x"e5" => vROM_tmp <= std_logic_vector(to_unsigned(94, 9));
      when "10" & x"b5" => vROM_tmp <= std_logic_vector(to_unsigned(95, 9));
      when "10" & x"73" => vROM_tmp <= std_logic_vector(to_unsigned(96, 9));
      when "01" & x"d3" => vROM_tmp <= std_logic_vector(to_unsigned(97, 9));
      when "10" & x"d3" => vROM_tmp <= std_logic_vector(to_unsigned(98, 9));
      when "11" & x"1c" => vROM_tmp <= std_logic_vector(to_unsigned(99, 9));
      when "11" & x"53" => vROM_tmp <= std_logic_vector(to_unsigned(100, 9));
      when "10" & x"9c" => vROM_tmp <= std_logic_vector(to_unsigned(101, 9));
      when "01" & x"9c" => vROM_tmp <= std_logic_vector(to_unsigned(102, 9));
      when "11" & x"8c" => vROM_tmp <= std_logic_vector(to_unsigned(103, 9));
      when "11" & x"93" => vROM_tmp <= std_logic_vector(to_unsigned(104, 9));
      when "10" & x"5c" => vROM_tmp <= std_logic_vector(to_unsigned(105, 9));
      when "01" & x"5c" => vROM_tmp <= std_logic_vector(to_unsigned(106, 9));
      when "11" & x"4c" => vROM_tmp <= std_logic_vector(to_unsigned(107, 9));
      when "00" & x"dc" => vROM_tmp <= std_logic_vector(to_unsigned(108, 9));
      when "10" & x"cc" => vROM_tmp <= std_logic_vector(to_unsigned(109, 9));
      when "01" & x"cc" => vROM_tmp <= std_logic_vector(to_unsigned(110, 9));
      when "01" & x"73" => vROM_tmp <= std_logic_vector(to_unsigned(111, 9));
      when "01" & x"b3" => vROM_tmp <= std_logic_vector(to_unsigned(112, 9));
      when "10" & x"3c" => vROM_tmp <= std_logic_vector(to_unsigned(113, 9));
      when "01" & x"3c" => vROM_tmp <= std_logic_vector(to_unsigned(114, 9));
      when "11" & x"2c" => vROM_tmp <= std_logic_vector(to_unsigned(115, 9));
      when "00" & x"bc" => vROM_tmp <= std_logic_vector(to_unsigned(116, 9));
      when "10" & x"ac" => vROM_tmp <= std_logic_vector(to_unsigned(117, 9));
      when "01" & x"ac" => vROM_tmp <= std_logic_vector(to_unsigned(118, 9));
      when "11" & x"a3" => vROM_tmp <= std_logic_vector(to_unsigned(119, 9));
      when "11" & x"33" => vROM_tmp <= std_logic_vector(to_unsigned(120, 9));
      when "10" & x"6c" => vROM_tmp <= std_logic_vector(to_unsigned(121, 9));
      when "01" & x"6c" => vROM_tmp <= std_logic_vector(to_unsigned(122, 9));
      when "11" & x"63" => vROM_tmp <= std_logic_vector(to_unsigned(123, 9));
      when "00" & x"ec" => vROM_tmp <= std_logic_vector(to_unsigned(124, 9));
      when "10" & x"e3" => vROM_tmp <= std_logic_vector(to_unsigned(125, 9));
      when "01" & x"e3" => vROM_tmp <= std_logic_vector(to_unsigned(126, 9));
      when "10" & x"b3" => vROM_tmp <= std_logic_vector(to_unsigned(127, 9));
      when "10" & x"72" => vROM_tmp <= std_logic_vector(to_unsigned(128, 9));
      when "01" & x"d2" => vROM_tmp <= std_logic_vector(to_unsigned(129, 9));
      when "10" & x"d2" => vROM_tmp <= std_logic_vector(to_unsigned(130, 9));
      when "11" & x"1d" => vROM_tmp <= std_logic_vector(to_unsigned(131, 9));
      when "11" & x"52" => vROM_tmp <= std_logic_vector(to_unsigned(132, 9));
      when "10" & x"9d" => vROM_tmp <= std_logic_vector(to_unsigned(133, 9));
      when "01" & x"9d" => vROM_tmp <= std_logic_vector(to_unsigned(134, 9));
      when "11" & x"8d" => vROM_tmp <= std_logic_vector(to_unsigned(135, 9));
      when "11" & x"92" => vROM_tmp <= std_logic_vector(to_unsigned(136, 9));
      when "10" & x"5d" => vROM_tmp <= std_logic_vector(to_unsigned(137, 9));
      when "01" & x"5d" => vROM_tmp <= std_logic_vector(to_unsigned(138, 9));
      when "11" & x"4d" => vROM_tmp <= std_logic_vector(to_unsigned(139, 9));
      when "00" & x"dd" => vROM_tmp <= std_logic_vector(to_unsigned(140, 9));
      when "10" & x"cd" => vROM_tmp <= std_logic_vector(to_unsigned(141, 9));
      when "01" & x"cd" => vROM_tmp <= std_logic_vector(to_unsigned(142, 9));
      when "01" & x"72" => vROM_tmp <= std_logic_vector(to_unsigned(143, 9));
      when "01" & x"b2" => vROM_tmp <= std_logic_vector(to_unsigned(144, 9));
      when "10" & x"3d" => vROM_tmp <= std_logic_vector(to_unsigned(145, 9));
      when "01" & x"3d" => vROM_tmp <= std_logic_vector(to_unsigned(146, 9));
      when "11" & x"2d" => vROM_tmp <= std_logic_vector(to_unsigned(147, 9));
      when "00" & x"bd" => vROM_tmp <= std_logic_vector(to_unsigned(148, 9));
      when "10" & x"ad" => vROM_tmp <= std_logic_vector(to_unsigned(149, 9));
      when "01" & x"ad" => vROM_tmp <= std_logic_vector(to_unsigned(150, 9));
      when "11" & x"a2" => vROM_tmp <= std_logic_vector(to_unsigned(151, 9));
      when "11" & x"32" => vROM_tmp <= std_logic_vector(to_unsigned(152, 9));
      when "10" & x"6d" => vROM_tmp <= std_logic_vector(to_unsigned(153, 9));
      when "01" & x"6d" => vROM_tmp <= std_logic_vector(to_unsigned(154, 9));
      when "11" & x"62" => vROM_tmp <= std_logic_vector(to_unsigned(155, 9));
      when "00" & x"ed" => vROM_tmp <= std_logic_vector(to_unsigned(156, 9));
      when "10" & x"e2" => vROM_tmp <= std_logic_vector(to_unsigned(157, 9));
      when "01" & x"e2" => vROM_tmp <= std_logic_vector(to_unsigned(158, 9));
      when "10" & x"b2" => vROM_tmp <= std_logic_vector(to_unsigned(159, 9));
      when "10" & x"7a" => vROM_tmp <= std_logic_vector(to_unsigned(160, 9));
      when "01" & x"da" => vROM_tmp <= std_logic_vector(to_unsigned(161, 9));
      when "10" & x"da" => vROM_tmp <= std_logic_vector(to_unsigned(162, 9));
      when "11" & x"1a" => vROM_tmp <= std_logic_vector(to_unsigned(163, 9));
      when "11" & x"5a" => vROM_tmp <= std_logic_vector(to_unsigned(164, 9));
      when "10" & x"9a" => vROM_tmp <= std_logic_vector(to_unsigned(165, 9));
      when "01" & x"9a" => vROM_tmp <= std_logic_vector(to_unsigned(166, 9));
      when "11" & x"8a" => vROM_tmp <= std_logic_vector(to_unsigned(167, 9));
      when "11" & x"9a" => vROM_tmp <= std_logic_vector(to_unsigned(168, 9));
      when "10" & x"5a" => vROM_tmp <= std_logic_vector(to_unsigned(169, 9));
      when "01" & x"5a" => vROM_tmp <= std_logic_vector(to_unsigned(170, 9));
      when "11" & x"4a" => vROM_tmp <= std_logic_vector(to_unsigned(171, 9));
      when "00" & x"da" => vROM_tmp <= std_logic_vector(to_unsigned(172, 9));
      when "10" & x"ca" => vROM_tmp <= std_logic_vector(to_unsigned(173, 9));
      when "01" & x"ca" => vROM_tmp <= std_logic_vector(to_unsigned(174, 9));
      when "01" & x"7a" => vROM_tmp <= std_logic_vector(to_unsigned(175, 9));
      when "01" & x"ba" => vROM_tmp <= std_logic_vector(to_unsigned(176, 9));
      when "10" & x"3a" => vROM_tmp <= std_logic_vector(to_unsigned(177, 9));
      when "01" & x"3a" => vROM_tmp <= std_logic_vector(to_unsigned(178, 9));
      when "11" & x"2a" => vROM_tmp <= std_logic_vector(to_unsigned(179, 9));
      when "00" & x"ba" => vROM_tmp <= std_logic_vector(to_unsigned(180, 9));
      when "10" & x"aa" => vROM_tmp <= std_logic_vector(to_unsigned(181, 9));
      when "01" & x"aa" => vROM_tmp <= std_logic_vector(to_unsigned(182, 9));
      when "11" & x"aa" => vROM_tmp <= std_logic_vector(to_unsigned(183, 9));
      when "11" & x"3a" => vROM_tmp <= std_logic_vector(to_unsigned(184, 9));
      when "10" & x"6a" => vROM_tmp <= std_logic_vector(to_unsigned(185, 9));
      when "01" & x"6a" => vROM_tmp <= std_logic_vector(to_unsigned(186, 9));
      when "11" & x"6a" => vROM_tmp <= std_logic_vector(to_unsigned(187, 9));
      when "00" & x"ea" => vROM_tmp <= std_logic_vector(to_unsigned(188, 9));
      when "10" & x"ea" => vROM_tmp <= std_logic_vector(to_unsigned(189, 9));
      when "01" & x"ea" => vROM_tmp <= std_logic_vector(to_unsigned(190, 9));
      when "10" & x"ba" => vROM_tmp <= std_logic_vector(to_unsigned(191, 9));
      when "10" & x"76" => vROM_tmp <= std_logic_vector(to_unsigned(192, 9));
      when "01" & x"d6" => vROM_tmp <= std_logic_vector(to_unsigned(193, 9));
      when "10" & x"d6" => vROM_tmp <= std_logic_vector(to_unsigned(194, 9));
      when "11" & x"16" => vROM_tmp <= std_logic_vector(to_unsigned(195, 9));
      when "11" & x"56" => vROM_tmp <= std_logic_vector(to_unsigned(196, 9));
      when "10" & x"96" => vROM_tmp <= std_logic_vector(to_unsigned(197, 9));
      when "01" & x"96" => vROM_tmp <= std_logic_vector(to_unsigned(198, 9));
      when "11" & x"86" => vROM_tmp <= std_logic_vector(to_unsigned(199, 9));
      when "11" & x"96" => vROM_tmp <= std_logic_vector(to_unsigned(200, 9));
      when "10" & x"56" => vROM_tmp <= std_logic_vector(to_unsigned(201, 9));
      when "01" & x"56" => vROM_tmp <= std_logic_vector(to_unsigned(202, 9));
      when "11" & x"46" => vROM_tmp <= std_logic_vector(to_unsigned(203, 9));
      when "00" & x"d6" => vROM_tmp <= std_logic_vector(to_unsigned(204, 9));
      when "10" & x"c6" => vROM_tmp <= std_logic_vector(to_unsigned(205, 9));
      when "01" & x"c6" => vROM_tmp <= std_logic_vector(to_unsigned(206, 9));
      when "01" & x"76" => vROM_tmp <= std_logic_vector(to_unsigned(207, 9));
      when "01" & x"b6" => vROM_tmp <= std_logic_vector(to_unsigned(208, 9));
      when "10" & x"36" => vROM_tmp <= std_logic_vector(to_unsigned(209, 9));
      when "01" & x"36" => vROM_tmp <= std_logic_vector(to_unsigned(210, 9));
      when "11" & x"26" => vROM_tmp <= std_logic_vector(to_unsigned(211, 9));
      when "00" & x"b6" => vROM_tmp <= std_logic_vector(to_unsigned(212, 9));
      when "10" & x"a6" => vROM_tmp <= std_logic_vector(to_unsigned(213, 9));
      when "01" & x"a6" => vROM_tmp <= std_logic_vector(to_unsigned(214, 9));
      when "11" & x"a6" => vROM_tmp <= std_logic_vector(to_unsigned(215, 9));
      when "11" & x"36" => vROM_tmp <= std_logic_vector(to_unsigned(216, 9));
      when "10" & x"66" => vROM_tmp <= std_logic_vector(to_unsigned(217, 9));
      when "01" & x"66" => vROM_tmp <= std_logic_vector(to_unsigned(218, 9));
      when "11" & x"66" => vROM_tmp <= std_logic_vector(to_unsigned(219, 9));
      when "00" & x"e6" => vROM_tmp <= std_logic_vector(to_unsigned(220, 9));
      when "10" & x"e6" => vROM_tmp <= std_logic_vector(to_unsigned(221, 9));
      when "01" & x"e6" => vROM_tmp <= std_logic_vector(to_unsigned(222, 9));
      when "10" & x"b6" => vROM_tmp <= std_logic_vector(to_unsigned(223, 9));
      when "10" & x"71" => vROM_tmp <= std_logic_vector(to_unsigned(224, 9));
      when "01" & x"d1" => vROM_tmp <= std_logic_vector(to_unsigned(225, 9));
      when "10" & x"d1" => vROM_tmp <= std_logic_vector(to_unsigned(226, 9));
      when "11" & x"1e" => vROM_tmp <= std_logic_vector(to_unsigned(227, 9));
      when "11" & x"51" => vROM_tmp <= std_logic_vector(to_unsigned(228, 9));
      when "10" & x"9e" => vROM_tmp <= std_logic_vector(to_unsigned(229, 9));
      when "01" & x"9e" => vROM_tmp <= std_logic_vector(to_unsigned(230, 9));
      when "11" & x"8e" => vROM_tmp <= std_logic_vector(to_unsigned(231, 9));
      when "11" & x"91" => vROM_tmp <= std_logic_vector(to_unsigned(232, 9));
      when "10" & x"5e" => vROM_tmp <= std_logic_vector(to_unsigned(233, 9));
      when "01" & x"5e" => vROM_tmp <= std_logic_vector(to_unsigned(234, 9));
      when "11" & x"4e" => vROM_tmp <= std_logic_vector(to_unsigned(235, 9));
      when "00" & x"de" => vROM_tmp <= std_logic_vector(to_unsigned(236, 9));
      when "10" & x"ce" => vROM_tmp <= std_logic_vector(to_unsigned(237, 9));
      when "01" & x"ce" => vROM_tmp <= std_logic_vector(to_unsigned(238, 9));
      when "01" & x"71" => vROM_tmp <= std_logic_vector(to_unsigned(239, 9));
      when "01" & x"b1" => vROM_tmp <= std_logic_vector(to_unsigned(240, 9));
      when "10" & x"37" => vROM_tmp <= std_logic_vector(to_unsigned(241, 9));
      when "01" & x"37" => vROM_tmp <= std_logic_vector(to_unsigned(242, 9));
      when "11" & x"2e" => vROM_tmp <= std_logic_vector(to_unsigned(243, 9));
      when "00" & x"b7" => vROM_tmp <= std_logic_vector(to_unsigned(244, 9));
      when "10" & x"ae" => vROM_tmp <= std_logic_vector(to_unsigned(245, 9));
      when "01" & x"ae" => vROM_tmp <= std_logic_vector(to_unsigned(246, 9));
      when "11" & x"a1" => vROM_tmp <= std_logic_vector(to_unsigned(247, 9));
      when "11" & x"31" => vROM_tmp <= std_logic_vector(to_unsigned(248, 9));
      when "10" & x"6e" => vROM_tmp <= std_logic_vector(to_unsigned(249, 9));
      when "01" & x"6e" => vROM_tmp <= std_logic_vector(to_unsigned(250, 9));
      when "11" & x"61" => vROM_tmp <= std_logic_vector(to_unsigned(251, 9));
      when "00" & x"ee" => vROM_tmp <= std_logic_vector(to_unsigned(252, 9));
      when "10" & x"e1" => vROM_tmp <= std_logic_vector(to_unsigned(253, 9));
      when "01" & x"e1" => vROM_tmp <= std_logic_vector(to_unsigned(254, 9));
      when "10" & x"b1" => vROM_tmp <= std_logic_vector(to_unsigned(255, 9));

      when others => vROM_tmp <= '1' & x"00";
                           
    end case;
  end process;

end behav;
