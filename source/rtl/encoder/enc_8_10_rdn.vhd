-------------------------------------------------------------------------------
-- Title      : negative disparity rom
-- Project    : 
-------------------------------------------------------------------------------
-- File       : enc_8_10_rdn.vhd
-- Author     : amr  <amr@laptop>
-- Company    : 
-- Created    : 2014-10-15
-- Last update: 2014-10-16
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

entity enc_8_10_rdn is
  
  port (
    clk          : in  std_logic;
    address      : in  std_logic_vector(7 downto 0);
    rde          : in  std_logic;
    encoded_data : out std_logic_vector(9 downto 0));

end enc_8_10_rdn;


architecture behav of enc_8_10_rdn is

  signal vROM      : std_logic_vector(9 downto 0);
  signal vROM_reg  : std_logic_vector(9 downto 0) := (others => '0');
  signal address_i : unsigned(7 downto 0);
  signal vROM_tmp  : std_logic_vector(9 downto 0);
  
begin  -- behav

  vROM         <= vROM_tmp(9 downto 0);
  address_i    <= unsigned(address);
  encoded_data <= vROM_reg;

  clk_pr : process(clk) is
  begin
    if rising_edge(clk) then
      if rde = '1' then
        vROM_reg <= vROM;
      end if;
    end if;
  end process;

  process(address_i) is
  begin
    case to_integer(address_i) is
      when 0      => vROM_tmp <= "10" & x"74";
      when 1      => vROM_tmp <= "01" & x"d4";
      when 2      => vROM_tmp <= "10" & x"d4";
      when 3      => vROM_tmp <= "11" & x"1b";
      when 4      => vROM_tmp <= "11" & x"54";
      when 5      => vROM_tmp <= "10" & x"9b";
      when 6      => vROM_tmp <= "01" & x"9b";
      when 7      => vROM_tmp <= "11" & x"8b";
      when 8      => vROM_tmp <= "11" & x"94";
      when 9      => vROM_tmp <= "10" & x"5b";
      when 10     => vROM_tmp <= "01" & x"5b";
      when 11     => vROM_tmp <= "11" & x"4b";
      when 12     => vROM_tmp <= "00" & x"db";
      when 13     => vROM_tmp <= "10" & x"cb";
      when 14     => vROM_tmp <= "01" & x"cb";
      when 15     => vROM_tmp <= "01" & x"74";
      when 16     => vROM_tmp <= "01" & x"b4";
      when 17     => vROM_tmp <= "10" & x"3b";
      when 18     => vROM_tmp <= "01" & x"3b";
      when 19     => vROM_tmp <= "11" & x"2b";
      when 20     => vROM_tmp <= "00" & x"bb";
      when 21     => vROM_tmp <= "10" & x"ab";
      when 22     => vROM_tmp <= "01" & x"ab";
      when 23     => vROM_tmp <= "11" & x"a4";
      when 24     => vROM_tmp <= "11" & x"34";
      when 25     => vROM_tmp <= "10" & x"6b";
      when 26     => vROM_tmp <= "01" & x"6b";
      when 27     => vROM_tmp <= "11" & x"64";
      when 28     => vROM_tmp <= "00" & x"eb";
      when 29     => vROM_tmp <= "10" & x"e4";
      when 30     => vROM_tmp <= "01" & x"e4";
      when 31     => vROM_tmp <= "10" & x"b4";
      when 32     => vROM_tmp <= "10" & x"79";
      when 33     => vROM_tmp <= "01" & x"d9";
      when 34     => vROM_tmp <= "10" & x"d9";
      when 35     => vROM_tmp <= "11" & x"19";
      when 36     => vROM_tmp <= "11" & x"59";
      when 37     => vROM_tmp <= "10" & x"99";
      when 38     => vROM_tmp <= "01" & x"99";
      when 39     => vROM_tmp <= "11" & x"89";
      when 40     => vROM_tmp <= "11" & x"99";
      when 41     => vROM_tmp <= "10" & x"59";
      when 42     => vROM_tmp <= "01" & x"59";
      when 43     => vROM_tmp <= "11" & x"49";
      when 44     => vROM_tmp <= "00" & x"d9";
      when 45     => vROM_tmp <= "10" & x"c9";
      when 46     => vROM_tmp <= "01" & x"c9";
      when 47     => vROM_tmp <= "01" & x"79";
      when 48     => vROM_tmp <= "01" & x"b9";
      when 49     => vROM_tmp <= "10" & x"39";
      when 50     => vROM_tmp <= "01" & x"39";
      when 51     => vROM_tmp <= "11" & x"29";
      when 52     => vROM_tmp <= "00" & x"b9";
      when 53     => vROM_tmp <= "10" & x"a9";
      when 54     => vROM_tmp <= "01" & x"a9";
      when 55     => vROM_tmp <= "11" & x"a9";
      when 56     => vROM_tmp <= "11" & x"39";
      when 57     => vROM_tmp <= "10" & x"69";
      when 58     => vROM_tmp <= "01" & x"69";
      when 59     => vROM_tmp <= "11" & x"69";
      when 60     => vROM_tmp <= "00" & x"e9";
      when 61     => vROM_tmp <= "10" & x"e9";
      when 62     => vROM_tmp <= "01" & x"e9";
      when 63     => vROM_tmp <= "10" & x"b9";
      when 64     => vROM_tmp <= "10" & x"75";
      when 65     => vROM_tmp <= "01" & x"d5";
      when 66     => vROM_tmp <= "10" & x"d5";
      when 67     => vROM_tmp <= "11" & x"15";
      when 68     => vROM_tmp <= "11" & x"55";
      when 69     => vROM_tmp <= "10" & x"95";
      when 70     => vROM_tmp <= "01" & x"95";
      when 71     => vROM_tmp <= "11" & x"85";
      when 72     => vROM_tmp <= "11" & x"95";
      when 73     => vROM_tmp <= "10" & x"55";
      when 74     => vROM_tmp <= "01" & x"55";
      when 75     => vROM_tmp <= "11" & x"45";
      when 76     => vROM_tmp <= "00" & x"d5";
      when 77     => vROM_tmp <= "10" & x"c5";
      when 78     => vROM_tmp <= "01" & x"c5";
      when 79     => vROM_tmp <= "01" & x"75";
      when 80     => vROM_tmp <= "01" & x"b5";
      when 81     => vROM_tmp <= "10" & x"35";
      when 82     => vROM_tmp <= "01" & x"35";
      when 83     => vROM_tmp <= "11" & x"25";
      when 84     => vROM_tmp <= "00" & x"b5";
      when 85     => vROM_tmp <= "10" & x"a5";
      when 86     => vROM_tmp <= "01" & x"a5";
      when 87     => vROM_tmp <= "11" & x"a5";
      when 88     => vROM_tmp <= "11" & x"35";
      when 89     => vROM_tmp <= "10" & x"65";
      when 90     => vROM_tmp <= "01" & x"65";
      when 91     => vROM_tmp <= "11" & x"65";
      when 92     => vROM_tmp <= "00" & x"e5";
      when 93     => vROM_tmp <= "10" & x"e5";
      when 94     => vROM_tmp <= "01" & x"e5";
      when 95     => vROM_tmp <= "10" & x"b5";
      when 96     => vROM_tmp <= "10" & x"73";
      when 97     => vROM_tmp <= "01" & x"d3";
      when 98     => vROM_tmp <= "10" & x"d3";
      when 99     => vROM_tmp <= "11" & x"1c";
      when 100    => vROM_tmp <= "11" & x"53";
      when 101    => vROM_tmp <= "10" & x"9c";
      when 102    => vROM_tmp <= "01" & x"9c";
      when 103    => vROM_tmp <= "11" & x"8c";
      when 104    => vROM_tmp <= "11" & x"93";
      when 105    => vROM_tmp <= "10" & x"5c";
      when 106    => vROM_tmp <= "01" & x"5c";
      when 107    => vROM_tmp <= "11" & x"4c";
      when 108    => vROM_tmp <= "00" & x"dc";
      when 109    => vROM_tmp <= "10" & x"cc";
      when 110    => vROM_tmp <= "01" & x"cc";
      when 111    => vROM_tmp <= "01" & x"73";
      when 112    => vROM_tmp <= "01" & x"b3";
      when 113    => vROM_tmp <= "10" & x"3c";
      when 114    => vROM_tmp <= "01" & x"3c";
      when 115    => vROM_tmp <= "11" & x"2c";
      when 116    => vROM_tmp <= "00" & x"bc";
      when 117    => vROM_tmp <= "10" & x"ac";
      when 118    => vROM_tmp <= "01" & x"ac";
      when 119    => vROM_tmp <= "11" & x"a3";
      when 120    => vROM_tmp <= "11" & x"33";
      when 121    => vROM_tmp <= "10" & x"6c";
      when 122    => vROM_tmp <= "01" & x"6c";
      when 123    => vROM_tmp <= "11" & x"63";
      when 124    => vROM_tmp <= "00" & x"ec";
      when 125    => vROM_tmp <= "10" & x"e3";
      when 126    => vROM_tmp <= "01" & x"e3";
      when 127    => vROM_tmp <= "10" & x"b3";
      when 128    => vROM_tmp <= "10" & x"72";
      when 129    => vROM_tmp <= "01" & x"d2";
      when 130    => vROM_tmp <= "10" & x"d2";
      when 131    => vROM_tmp <= "11" & x"1d";
      when 132    => vROM_tmp <= "11" & x"52";
      when 133    => vROM_tmp <= "10" & x"9d";
      when 134    => vROM_tmp <= "01" & x"9d";
      when 135    => vROM_tmp <= "11" & x"8d";
      when 136    => vROM_tmp <= "11" & x"92";
      when 137    => vROM_tmp <= "10" & x"5d";
      when 138    => vROM_tmp <= "01" & x"5d";
      when 139    => vROM_tmp <= "11" & x"4d";
      when 140    => vROM_tmp <= "00" & x"dd";
      when 141    => vROM_tmp <= "10" & x"cd";
      when 142    => vROM_tmp <= "01" & x"cd";
      when 143    => vROM_tmp <= "01" & x"72";
      when 144    => vROM_tmp <= "01" & x"b2";
      when 145    => vROM_tmp <= "10" & x"3d";
      when 146    => vROM_tmp <= "01" & x"3d";
      when 147    => vROM_tmp <= "11" & x"2d";
      when 148    => vROM_tmp <= "00" & x"bd";
      when 149    => vROM_tmp <= "10" & x"ad";
      when 150    => vROM_tmp <= "01" & x"ad";
      when 151    => vROM_tmp <= "11" & x"a2";
      when 152    => vROM_tmp <= "11" & x"32";
      when 153    => vROM_tmp <= "10" & x"6d";
      when 154    => vROM_tmp <= "01" & x"6d";
      when 155    => vROM_tmp <= "11" & x"62";
      when 156    => vROM_tmp <= "00" & x"ed";
      when 157    => vROM_tmp <= "10" & x"e2";
      when 158    => vROM_tmp <= "01" & x"e2";
      when 159    => vROM_tmp <= "10" & x"b2";
      when 160    => vROM_tmp <= "10" & x"7a";
      when 161    => vROM_tmp <= "01" & x"da";
      when 162    => vROM_tmp <= "10" & x"da";
      when 163    => vROM_tmp <= "11" & x"1a";
      when 164    => vROM_tmp <= "11" & x"5a";
      when 165    => vROM_tmp <= "10" & x"9a";
      when 166    => vROM_tmp <= "01" & x"9a";
      when 167    => vROM_tmp <= "11" & x"8a";
      when 168    => vROM_tmp <= "11" & x"9a";
      when 169    => vROM_tmp <= "10" & x"5a";
      when 170    => vROM_tmp <= "01" & x"5a";
      when 171    => vROM_tmp <= "11" & x"4a";
      when 172    => vROM_tmp <= "00" & x"da";
      when 173    => vROM_tmp <= "10" & x"ca";
      when 174    => vROM_tmp <= "01" & x"ca";
      when 175    => vROM_tmp <= "01" & x"7a";
      when 176    => vROM_tmp <= "01" & x"ba";
      when 177    => vROM_tmp <= "10" & x"3a";
      when 178    => vROM_tmp <= "01" & x"3a";
      when 179    => vROM_tmp <= "11" & x"2a";
      when 180    => vROM_tmp <= "00" & x"ba";
      when 181    => vROM_tmp <= "10" & x"aa";
      when 182    => vROM_tmp <= "01" & x"aa";
      when 183    => vROM_tmp <= "11" & x"aa";
      when 184    => vROM_tmp <= "11" & x"3a";
      when 185    => vROM_tmp <= "10" & x"6a";
      when 186    => vROM_tmp <= "01" & x"6a";
      when 187    => vROM_tmp <= "11" & x"6a";
      when 188    => vROM_tmp <= "00" & x"ea";
      when 189    => vROM_tmp <= "10" & x"ea";
      when 190    => vROM_tmp <= "01" & x"ea";
      when 191    => vROM_tmp <= "10" & x"ba";
      when 192    => vROM_tmp <= "10" & x"76";
      when 193    => vROM_tmp <= "01" & x"d6";
      when 194    => vROM_tmp <= "10" & x"d6";
      when 195    => vROM_tmp <= "11" & x"16";
      when 196    => vROM_tmp <= "11" & x"56";
      when 197    => vROM_tmp <= "10" & x"96";
      when 198    => vROM_tmp <= "01" & x"96";
      when 199    => vROM_tmp <= "11" & x"86";
      when 200    => vROM_tmp <= "11" & x"96";
      when 201    => vROM_tmp <= "10" & x"56";
      when 202    => vROM_tmp <= "01" & x"56";
      when 203    => vROM_tmp <= "11" & x"46";
      when 204    => vROM_tmp <= "00" & x"d6";
      when 205    => vROM_tmp <= "10" & x"c6";
      when 206    => vROM_tmp <= "01" & x"c6";
      when 207    => vROM_tmp <= "01" & x"76";
      when 208    => vROM_tmp <= "01" & x"b6";
      when 209    => vROM_tmp <= "10" & x"36";
      when 210    => vROM_tmp <= "01" & x"36";
      when 211    => vROM_tmp <= "11" & x"26";
      when 212    => vROM_tmp <= "00" & x"b6";
      when 213    => vROM_tmp <= "10" & x"a6";
      when 214    => vROM_tmp <= "01" & x"a6";
      when 215    => vROM_tmp <= "11" & x"a6";
      when 216    => vROM_tmp <= "11" & x"36";
      when 217    => vROM_tmp <= "10" & x"66";
      when 218    => vROM_tmp <= "01" & x"66";
      when 219    => vROM_tmp <= "11" & x"66";
      when 220    => vROM_tmp <= "00" & x"e6";
      when 221    => vROM_tmp <= "10" & x"e6";
      when 222    => vROM_tmp <= "01" & x"e6";
      when 223    => vROM_tmp <= "10" & x"b6";
      when 224    => vROM_tmp <= "10" & x"71";
      when 225    => vROM_tmp <= "01" & x"d1";
      when 226    => vROM_tmp <= "10" & x"d1";
      when 227    => vROM_tmp <= "11" & x"1e";
      when 228    => vROM_tmp <= "11" & x"51";
      when 229    => vROM_tmp <= "10" & x"9e";
      when 230    => vROM_tmp <= "01" & x"9e";
      when 231    => vROM_tmp <= "11" & x"8e";
      when 232    => vROM_tmp <= "11" & x"91";
      when 233    => vROM_tmp <= "10" & x"5e";
      when 234    => vROM_tmp <= "01" & x"5e";
      when 235    => vROM_tmp <= "11" & x"4e";
      when 236    => vROM_tmp <= "00" & x"de";
      when 237    => vROM_tmp <= "10" & x"ce";
      when 238    => vROM_tmp <= "01" & x"ce";
      when 239    => vROM_tmp <= "01" & x"71";
      when 240    => vROM_tmp <= "01" & x"b1";
      when 241    => vROM_tmp <= "10" & x"37";
      when 242    => vROM_tmp <= "01" & x"37";
      when 243    => vROM_tmp <= "11" & x"2e";
      when 244    => vROM_tmp <= "00" & x"b7";
      when 245    => vROM_tmp <= "10" & x"ae";
      when 246    => vROM_tmp <= "01" & x"ae";
      when 247    => vROM_tmp <= "11" & x"a1";
      when 248    => vROM_tmp <= "11" & x"31";
      when 249    => vROM_tmp <= "10" & x"6e";
      when 250    => vROM_tmp <= "01" & x"6e";
      when 251    => vROM_tmp <= "11" & x"61";
      when 252    => vROM_tmp <= "00" & x"ee";
      when 253    => vROM_tmp <= "10" & x"e1";
      when 254    => vROM_tmp <= "01" & x"e1";
      when 255    => vROM_tmp <= "10" & x"b1";
      when others => vROM_tmp <= (others => '0');
    end case;
  end process;

end behav;
