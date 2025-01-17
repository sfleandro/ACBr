program ACBrNFSeXTestCases;

{
  Esse � um projeto de testes com a ajuda da ACBrTests.Runner.pas
  -------------------------
  Este projeto deve funcionar tanto em DUnit/DUnitX/TestInsight
  Por padr�o ele ir� utilizar DUnit e Interface (GUI)

  Para mudar o comportamento, adicione os seguintes "conditional defines" nas
  op��es do projeto (project->options):
  * "NOGUI"       - Transforma os testes em uma aplica��o CONSOLE
  * "DUNITX"      - Passa a usar a DUnitX ao inv�s da Dunit
  * "TESTINSIGHT" - Passa a usar o TestInsight
  * "CI"          - Caso use integra��o continua (por exemplo com o Continua CI ou Jenkins)
                  --/ Geralmente usado em conjunto com NOGUI
  * "FMX"         - Para usar Firemonkey (FMX) ao inv�s de VCL. (Testado apenas com DUnitX)

  ATEN��O: 1) OS defines PRECISAM estar nas op��es do projeto. N�o basta definir no arquivo de projeto.
           2) Fa�a um Build sempre que fizer altera��es de Defines.
  Para mais informa��es veja o arquivo: ACBrTests.Runner.pas
}

{$I ACBr.inc}

{$IFDEF NOGUI}
{$APPTYPE CONSOLE}
{$ENDIF}

{$IFDEF DUNITX}
  {$STRONGLINKTYPES ON}
{$ENDIF}

{$R *.RES}

uses
  ACBrTests.Util in '..\..\ACBrTests.Util.pas',
  ACBrTests.Runner in '..\..\ACBrTests.Runner.pas',
  ACBrNFSeXTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXTests.pas',
  ACBrNFSeXProvedorABRASFv1Tests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorABRASFv1Tests.pas',
  ACBrNFSeXProvedorABRASFv2Tests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorABRASFv2Tests.pas',
  ACBrNFSeXProvedorAgiliTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorAgiliTests.pas',
  ACBrNFSeXProvedorAssessorPublicoTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorAssessorPublicoTests.pas',
  ACBrNFSeXProvedorBauhausTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorBauhausTests.pas',
  ACBrNFSeXProvedorEquiplanoTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorEquiplanoTests.pas',
  ACBrNFSeXProvedorIPMTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorIPMTests.pas',
  ACBrNFSeXProvedorISSBarueriTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorISSBarueriTests.pas',
  ACBrNFSeXProvedorPadraoNacionalTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorPadraoNacionalTests.pas',
  ACBrNFSeXProvedorSigISSTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorSigISSTests.pas',
  ACBrNFSeXProvedorSoftPlanTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorSoftPlanTests.pas',
  ACBrNFSeXProvedorWebFiscoTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXProvedorWebFiscoTests.pas',
  ACBrNFSeXRetornoSoapTests in '..\..\FPCUnit\ACBrNFSeX\ACBrNFSeXRetornoSoapTests.pas';

begin
  ACBrRunTests;
end.
