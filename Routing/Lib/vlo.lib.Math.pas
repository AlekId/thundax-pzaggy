(*
  * Copyright (c) 2010-2013 Thundax P-Zaggy (VLO Framework)
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
  * modification, are permitted provided that the following conditions are
  * met:
  *
  * * Redistributions of source code must retain the above copyright
  *   notice, this list of conditions and the following disclaimer.
  *
  * * Redistributions in binary form must reproduce the above copyright
  *   notice, this list of conditions and the following disclaimer in the
  *   documentation and/or other materials provided with the distribution.
  *
  * * Neither the name of 'Thundax P-Zaggy' nor the names of its contributors
  *   may be used to endorse or promote products derived from this software
  *   without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
  * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
  * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
  * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
  * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
  * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
  * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)
unit vlo.lib.Math;

interface

uses types, Math;

function Comparar(Value1, Value2: double; MethodComp: string): boolean;

const
    RealMargin = 0.000001; //1e-6

implementation

function Comparar(Value1, Value2: double; MethodComp: string): boolean;
var
    ret: boolean;
begin
    ret := false;
    if MethodComp = '=' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            EqualsValue: ret := true;
        end;
    end
    else if MethodComp = '<>' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            LessThanValue: ret := true;
            GreaterThanValue: ret := true;
        end;
    end
    else if MethodComp = '>=' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            EqualsValue: ret := true;
            GreaterThanValue: ret := true;
        end;
    end
    else if MethodComp = '>' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            GreaterThanValue: ret := true;
        end;
    end
    else if MethodComp = '<=' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            LessThanValue: ret := true;
            EqualsValue: ret := true;
        end;
    end
    else if MethodComp = '<' then
    begin
        case CompareValue(Value1, Value2, RealMargin) of
            LessThanValue: ret := true;
        end;
    end;
    result := ret;
end;

end.
