(*
  * Copyright (c) 2010-2012 Thundax P-Zaggy (VLO Framework)
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
unit pzaggy.lib.fonts;

interface

uses
  Graphics, StdCtrls, Dialogs;

procedure AssignFont(var FontTarget: TFont; FontSource: TFont);
procedure AssignEditFont(var FontTarget: TEdit; FontSource: TFont);
procedure AssignDialogFont(var FontTarget: TFontDialog; FontSource: TFont);

implementation

procedure AssignFont(var FontTarget: TFont; FontSource: TFont);
begin
  FontTarget.Name := FontSource.name;
  FontTarget.Size := FontSource.Size;
  FontTarget.Style := FontSource.Style;
  FontTarget.Color := FontSource.Color;
end;

procedure AssignEditFont(var FontTarget: TEdit; FontSource: TFont);
begin
  FontTarget.Text := FontSource.Name;
  FontTarget.Font.Name := FontSource.Name;
  FontTarget.Font.Style := FontSource.Style;
  FontTarget.Font.Color := FontSource.Color;
end;

procedure AssignDialogFont(var FontTarget: TFontDialog; FontSource: TFont);
begin
  FontTarget.Font.Name := FontSource.Name;
  FontTarget.Font.Size := FontSource.Size;
  FontTarget.Font.Style := FontSource.Style;
  FontTarget.Font.Color := FontSource.Color;
end;

end.
