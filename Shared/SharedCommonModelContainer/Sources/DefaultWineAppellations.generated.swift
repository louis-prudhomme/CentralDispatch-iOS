import Foundation

/// A default wine appellation for database seeding
struct DefaultWineAppellation: Sendable {
    let id: UUID
    let name: String
    let description: String
    let rawWindow: String
    let colors: [DefaultWineColor]
    let mainGrapeVarieties: [DefaultGrapeVariety]
    let region: DefaultWineRegion
}

/// A default wine region within a vineyard
struct DefaultWineRegion: Sendable {
    let id: UUID
    let name: String
    let vineyard: DefaultWineVineyard
}

/// A default wine vineyard (e.g., Alsace, Bordeaux, Burgundy)
struct DefaultWineVineyard: Sendable {
    let id: UUID
    let description: String
    let name: String
    let soilAndClimate: String
    let history: String
}

/// A grape variety used in wine appellations
struct DefaultGrapeVariety: Sendable {
    let id: UUID
    let name: String
    let description: String
    let color: DefaultGrapeVarietyColor
    let synonyms: Set<String>
}

/// The color of the wine
enum DefaultWineColor: String, Codable {
    case red
    case white
    case rosé
    case whiteSparkling
    case roséSparkling
    case redSparkling
}

/// A grape variety used in wine appellations
enum DefaultGrapeVarietyColor: String, Codable {
    case black
    case white
    case pink
    case grey
}

// swiftlint:disable:next blanket_disable_command
// swiftlint:disable line_length file_length

/// Pre-populated list of French wine appellations
let defaultFrenchAppellations = [
    DefaultWineAppellation.`9CE0E221-9FF0-4C99-B711-B7EC35E51AEA`,
    DefaultWineAppellation.`DB775A0A-698E-4097-97E8-B53E56A31586`,
    DefaultWineAppellation.`D4F88357-6AE3-4BDB-9941-793B604FFDE9`,
    DefaultWineAppellation.`9B276406-4FDD-454E-9843-7C85EA37A9CA`,
    DefaultWineAppellation.`F508E067-1B50-4231-BE81-ACB0C5710EB0`,
    DefaultWineAppellation.`392ED0E3-C53D-4E82-95EC-843DF3A3229E`,
    DefaultWineAppellation.`FAF3DE54-9CAC-482B-8727-2381AD1C6745`,
    DefaultWineAppellation.`67CC366E-1CFB-42C8-AC4B-3CD25BB6F5CD`,
    DefaultWineAppellation.`0AAE6794-81F7-408D-83B6-91C3F8A4ED1A`,
    DefaultWineAppellation.`6C5A00EE-F3C2-4D2C-9C2D-5E13D45FF9D4`,
    DefaultWineAppellation.`39A18443-9428-49B4-92B5-3389AC5E17BC`,
    DefaultWineAppellation.`FE05997A-4D38-49D8-9EA5-D7AD29F1FFB9`,
    DefaultWineAppellation.`0DA44F7C-5B2C-42F7-BC16-A1535BD6AC2B`,
    DefaultWineAppellation.`900D6F16-CDE7-412E-BBCB-6190657F4A7E`,
    DefaultWineAppellation.`D36A4FA8-6ED4-48B4-A814-B00782920E4C`,
    DefaultWineAppellation.`AF1B5967-4A43-43A4-A332-43EAE7997D90`,
    DefaultWineAppellation.`072D0095-326C-49FE-905B-CC5C837A4910`,
    DefaultWineAppellation.`8871B7D3-C8FE-42CC-9025-6758ED1C0B8F`,
    DefaultWineAppellation.`C1EEBD52-E581-426B-9623-EAD85FD95764`,
    DefaultWineAppellation.`AC9A3BBA-D8BF-4B1B-B9DA-B05A2C4C79C0`,
    DefaultWineAppellation.`4C34C95F-D0CD-4C06-A871-FB30DF00D1F0`,
    DefaultWineAppellation.`AAB927FA-3382-4AAF-AA76-5EE89B3E028B`,
    DefaultWineAppellation.`2D288662-DA39-494B-B623-809C22C2EE3E`,
    DefaultWineAppellation.`9A6A3334-74FC-4374-9872-C5DDD623FE1D`,
    DefaultWineAppellation.`2FBC4594-824D-4096-BB4C-7E323340D917`,
    DefaultWineAppellation.`A6310AD5-AD60-4D69-BB98-87119EB570A0`,
    DefaultWineAppellation.`468B72F4-07EF-407C-8795-95604A1E5A73`,
    DefaultWineAppellation.`8815C453-78C8-4AD3-954A-E4114ADDD6C1`,
    DefaultWineAppellation.`B4BF03C6-95A7-4567-91DD-398DCEC0F2ED`,
    DefaultWineAppellation.`CD04680B-F85A-4E8C-88CA-D66752CF8B1B`,
    DefaultWineAppellation.`9EA238A2-0D46-46AA-83C3-54929DD8C494`,
    DefaultWineAppellation.`4CD93005-6477-4461-AA31-9A8DCD5E7A9D`,
    DefaultWineAppellation.`BF9B743D-F25C-4B40-ABF7-1A2C118FA88D`,
    DefaultWineAppellation.`41BF9AD1-B0E2-4FFB-AE99-A5CD3F6F9F84`,
    DefaultWineAppellation.`4E2D9015-1079-42CD-9F63-6E249CFC51BA`,
    DefaultWineAppellation.`14EE51F2-9420-499D-91E7-811C81BEF6B2`,
    DefaultWineAppellation.`D56CAF17-54BD-4B1F-AF06-DE5EC1C81311`,
    DefaultWineAppellation.`5459B618-4C43-431F-959D-19FB233D97D1`,
    DefaultWineAppellation.`848D0A3F-8CF8-42B4-BA38-F3A3100F3169`,
    DefaultWineAppellation.`8BB69ED2-D0E1-462F-BDFC-B74FC766DD07`,
    DefaultWineAppellation.`EC06F129-5BD7-436B-8E72-93C71B5463EB`,
    DefaultWineAppellation.`6B32658A-BE5F-477A-BA57-22BC4EF21445`,
    DefaultWineAppellation.`048593B4-5982-4D79-9C45-2F9D12504036`,
    DefaultWineAppellation.`F37C0888-3A00-41CC-8EE5-98C026E6A0CB`,
    DefaultWineAppellation.`D0B68BF7-91BC-44A2-8A33-2988C3F340EF`,
    DefaultWineAppellation.`0AAE6E13-B2B9-4CE5-9A43-0DD7F71968D8`,
    DefaultWineAppellation.`2D1CBE0F-18B0-4628-A2FE-14803D23BF2F`,
    DefaultWineAppellation.`4052383A-3BB4-4F9B-82F0-783A79DA5300`,
    DefaultWineAppellation.`7CBCB266-B524-4466-A590-37F73296AF4E`,
    DefaultWineAppellation.`EA4D1B09-DC16-4725-9718-D73D04EDCEE3`,
    DefaultWineAppellation.`37A27444-D25C-40AE-8570-BE427988ABE2`,
    DefaultWineAppellation.`476C35EB-939F-4708-817D-8165E971C5A1`,
    DefaultWineAppellation.`79B47A02-1286-412E-951D-E31586C6CF27`,
    DefaultWineAppellation.`B00590E7-C719-4E5D-BCEA-AAD430661F07`,
    DefaultWineAppellation.`898A1A1C-5DA5-484D-9232-833F9080D23E`,
    DefaultWineAppellation.`A1F1F0EF-950F-487A-896C-091A099D590B`,
    DefaultWineAppellation.`70591428-695D-4C51-8510-6609855D0830`,
    DefaultWineAppellation.`344246D8-2553-4BAD-A50A-67F6E26E17BC`,
    DefaultWineAppellation.`736DF70A-BC44-48E7-ACED-455C8DEB549F`,
    DefaultWineAppellation.`06C1B1E3-7A89-4DEE-BF3F-7179EDE34BE3`,
    DefaultWineAppellation.`302BA67B-0408-45DB-8ED3-55031B47DF9D`,
    DefaultWineAppellation.`70CBCDD3-4630-47CF-8CF5-48DFFAEF1260`,
    DefaultWineAppellation.`3C2DC4C1-E407-4EF1-9AD2-14E01D4729EC`,
    DefaultWineAppellation.`B16D715F-99D1-454F-94EB-7A4E9EB7EB2B`,
    DefaultWineAppellation.`37A9F58D-6B85-488B-A0A1-A6CA256FABA9`,
    DefaultWineAppellation.`6066FA16-B7B1-4DA2-8CFB-4F2698F6F366`,
    DefaultWineAppellation.`6E27B339-1507-40C4-8AF1-31BE965C79B9`,
    DefaultWineAppellation.`0CDB8374-928F-4A85-B46C-42F2C177CF88`,
    DefaultWineAppellation.`5CBA0D2A-2FAA-47A3-8D81-E045DC8BB577`,
    DefaultWineAppellation.`05ECF5A9-373E-4410-B51B-7286D1D20FE8`,
    DefaultWineAppellation.`A0853BE6-8C7B-4C80-AEAD-DB8C7CCF3C89`,
    DefaultWineAppellation.`8CEBF038-E073-498A-9A2E-B87C1976AA7B`,
    DefaultWineAppellation.`CE387C1E-2AC9-40FC-8432-00E3F57B407C`,
    DefaultWineAppellation.`0A9049BA-D4AF-48DE-829F-38D8DBF0825B`,
    DefaultWineAppellation.`94621AEC-FBF4-4366-99F8-F2EB9E3CB690`,
    DefaultWineAppellation.`7A68752C-0F15-4DED-A264-136994839830`,
    DefaultWineAppellation.`F6C8A556-5499-40EE-9768-C239A201B498`,
    DefaultWineAppellation.`05210577-B509-4418-B830-895AF8BE75BC`,
    DefaultWineAppellation.`D9C37E19-0A05-46AD-AA48-21763F1BD1AE`,
    DefaultWineAppellation.`AED859E5-10B5-49AA-AC4E-9499116744AD`,
    DefaultWineAppellation.`175FC82F-1D1E-4E1B-B47B-0642A17AB569`,
    DefaultWineAppellation.`86796705-145C-4563-9321-ADB351DD9DD5`,
    DefaultWineAppellation.`4F631D1C-7B2B-4D2E-8C57-3D71CDD8BEE7`,
    DefaultWineAppellation.`B6AE75C5-EF9C-4621-9865-905F8780E9F0`,
    DefaultWineAppellation.`FC59ED9C-CCDE-479E-8A7D-CE65C8067DEA`,
    DefaultWineAppellation.`E16A5D44-7055-4A87-A93C-DD94115053A4`,
    DefaultWineAppellation.`8DC7E93C-395C-4EC0-AD39-9BAE431102E4`,
    DefaultWineAppellation.`A9B3E614-F30A-44E6-B588-64A68D03F36F`,
    DefaultWineAppellation.`014DF612-2A25-43E0-B946-EE600383DBED`,
    DefaultWineAppellation.`F184A94A-F9F5-40BB-B8F9-DCD22BD89F0F`,
    DefaultWineAppellation.`F767618C-E3DB-4B2B-93B5-5241655E3D36`,
    DefaultWineAppellation.`E9BD8507-C9F0-4A71-B8DB-38E53844D949`,
    DefaultWineAppellation.`C09DE0B3-AD00-4461-B2E9-57E42AFA1B92`,
    DefaultWineAppellation.`6DC9E458-10DE-40F1-98A0-86C29DF69ABC`,
    DefaultWineAppellation.`13506726-726D-4458-B0A0-E40BAB889F56`,
    DefaultWineAppellation.`CF9C73B5-1909-4CCA-9E7F-98260E401BFC`,
    DefaultWineAppellation.`AAC2628F-2EAF-44CC-B884-D143775FB2A5`,
    DefaultWineAppellation.`101BCB35-8A5C-4F88-B632-3C595598CFE4`,
    DefaultWineAppellation.`75B84097-317C-4A30-A721-0B362513D73D`,
    DefaultWineAppellation.`26265671-1C3F-4052-A463-A6ED7AF735A8`,
    DefaultWineAppellation.`9CAD018A-A764-48B8-81F5-9A124AC30608`,
    DefaultWineAppellation.`1AC47750-189B-414C-9097-D4710278BFCA`,
    DefaultWineAppellation.`8ECFB61A-44E8-4726-B7C7-9400E373A673`,
    DefaultWineAppellation.`8B00B48E-1A77-46D1-87DC-EDCD8C7A3D05`,
    DefaultWineAppellation.`379D8A4D-E277-4F36-897B-1DC65E9F2F1C`,
    DefaultWineAppellation.`4B03ABF8-1FCA-48E4-A63E-06402DCD528D`,
    DefaultWineAppellation.`54B1BA7F-F0A1-4312-9897-C08BD73D51DA`,
    DefaultWineAppellation.`DA602C84-14E5-4F5B-B479-C774AACAB730`,
    DefaultWineAppellation.`7C3F1A8F-A4A2-432B-AE09-E864E56A2D56`,
    DefaultWineAppellation.`6B332E0F-B2B3-4FC2-B2C9-48463492F767`,
    DefaultWineAppellation.`1AD730F7-0A98-4653-8097-35DED13B316A`,
    DefaultWineAppellation.`5E1E57C1-B17A-46B3-8003-157AB50DB001`,
    DefaultWineAppellation.`3638D5F1-9DE1-4DCC-B536-8806FF9339BA`,
    DefaultWineAppellation.`A8B58BF0-FF1B-4D44-B101-109989B98519`,
    DefaultWineAppellation.`C6EC82C9-CC33-4467-8601-C2EFA122E9E5`,
    DefaultWineAppellation.`DEB8329D-4A72-4C43-8CFD-F7E57924C095`,
    DefaultWineAppellation.`00F70583-1E9E-4674-80D5-4E3F5038FC47`,
    DefaultWineAppellation.`B32685CE-34BE-4360-8234-7D5E2174DC7B`,
    DefaultWineAppellation.`EF1CE6C2-9DAA-4F48-A2B2-3544867B7BEE`,
    DefaultWineAppellation.`064E8505-CEF9-4328-B20B-F00CF713BB9E`,
    DefaultWineAppellation.`118D786A-D4D7-4CDC-BB9B-D4E7F466EBEF`,
    DefaultWineAppellation.`74CBD189-7457-44EE-818E-9DB6494374C6`,
    DefaultWineAppellation.`F2EA9FED-BF97-46C3-8779-748882869459`,
    DefaultWineAppellation.`1431F9BC-C925-49AD-AC2E-2A4AF29DB735`,
    DefaultWineAppellation.`5C020687-1A57-48B7-8BC9-06E4EB93BE9A`,
    DefaultWineAppellation.`6BD4CC1C-A6FB-4F20-B3F0-72985E5AEC65`,
    DefaultWineAppellation.`D5D68FD8-D105-40E3-9A61-5E79BF87A825`,
    DefaultWineAppellation.`ADD3A2DE-ADAB-44D5-B87C-9784EFC90FE0`,
    DefaultWineAppellation.`BAA40743-E0A4-4DB8-8147-41827513446B`,
    DefaultWineAppellation.`DA680855-37BD-4EE9-AA82-AD2273B16083`,
    DefaultWineAppellation.`D7058072-CDC2-457F-B461-361FD78F44E9`,
    DefaultWineAppellation.`F08F6716-AB97-459E-9207-277FCB7388C2`,
    DefaultWineAppellation.`24E61474-EEC7-416B-A795-AF622EFA28E5`,
    DefaultWineAppellation.`53EAD12E-99CA-409B-A0EB-CCB512EFF157`,
    DefaultWineAppellation.`367E02E2-61FF-425B-805E-E1166F7455B9`,
    DefaultWineAppellation.`0753B1DF-0D96-4031-912E-C4DAEEBD4C46`,
    DefaultWineAppellation.`A0194C0C-C0AF-4D95-9BBD-54F639F47C27`,
    DefaultWineAppellation.`3EC2AAF9-B796-4C69-88D3-EFA26C1D32DB`,
    DefaultWineAppellation.`C712FAEF-CDC8-4C7A-9BC8-CA4C535B0D58`,
    DefaultWineAppellation.`EB1FC59C-EE4A-42DF-8546-6A5764772B24`,
    DefaultWineAppellation.`58209642-CCA0-41D4-91C7-374627381FF4`,
    DefaultWineAppellation.`A47A39F9-EB7A-460D-B8A7-B3B1C1C8AF55`,
    DefaultWineAppellation.`ADE37753-34C3-42B8-B9B2-2DE6900546F2`,
    DefaultWineAppellation.`51ABFF65-6DF2-47B8-B088-F137C4EBD64C`,
    DefaultWineAppellation.`4F9D1A34-ECB5-4441-BDF4-FA4A4693E554`,
    DefaultWineAppellation.`768ED7C1-F3C1-46B7-A609-74556267338E`,
    DefaultWineAppellation.`41F18524-E65D-47D4-AA55-0C7D15CD39A0`,
    DefaultWineAppellation.`FBE79421-C04E-426C-A7CC-1D0DDD467542`,
    DefaultWineAppellation.`4493521E-3ECD-4668-A90A-27105087214F`,
    DefaultWineAppellation.`0639E44B-F7B9-43AA-B99A-8A4EB6F14DBF`,
    DefaultWineAppellation.`B1C2B2F7-ECDA-4EA1-A9BE-5163FE958FFD`,
    DefaultWineAppellation.`28073CED-9379-4F6B-A698-CD74AE7E3226`,
    DefaultWineAppellation.`5B7B3D6C-B9B1-409E-9CE5-D1CDA1717133`,
    DefaultWineAppellation.`725D29A6-6682-480F-B970-54D0D9517772`,
    DefaultWineAppellation.`2C49BD68-8943-4B14-AFD8-1A1828A5AEB9`,
    DefaultWineAppellation.`CF97A5A8-2261-48B7-B0E9-759EABF8D737`,
    DefaultWineAppellation.`F6DF2246-58B9-4B37-AA04-5FF407DECBB7`,
    DefaultWineAppellation.`C8FDD695-C630-4502-ACAE-D2D6D7E774B3`,
    DefaultWineAppellation.`9E091CC8-9F0F-45BA-8AED-9B2E184CF6FB`,
    DefaultWineAppellation.`39934B97-8B74-4CE8-8063-8246950FFB87`,
    DefaultWineAppellation.`5171EFE1-8105-4049-9462-5314799F3FCA`,
    DefaultWineAppellation.`96644946-DB56-482F-8F54-E20E5770A781`,
    DefaultWineAppellation.`ABC2AED0-3F04-45A0-9176-8A780C9C182E`,
    DefaultWineAppellation.`E02BD93A-5705-426A-84FB-DF361144BF92`,
    DefaultWineAppellation.`2A09C4B0-FC9D-48CC-AD35-AE5505822721`,
    DefaultWineAppellation.`36BA2FA1-DEBA-410F-9110-DAE8226EBD1E`,
    DefaultWineAppellation.`186037F5-F69C-4AFC-B439-DBCDD2B8258D`,
    DefaultWineAppellation.`79D51103-5F66-42B2-8136-B4C19A8F664F`,
    DefaultWineAppellation.`48CDB679-E382-4AA0-AE21-4A5EA7CC2C7E`,
    DefaultWineAppellation.`6FB70A44-AC0D-4379-938D-E9EC4DBAF3BC`,
    DefaultWineAppellation.`69A7AD78-EF7A-440B-B914-CA0C93CE8FFC`,
    DefaultWineAppellation.`D6333044-50B3-44DC-9395-065E148FC5FA`,
    DefaultWineAppellation.`0B115EA8-0119-4D4A-A88F-4BCD0D76D864`,
    DefaultWineAppellation.`8CFB9048-C4C8-4169-93D4-F16000C0A1B7`,
    DefaultWineAppellation.`E0DC5C99-C18A-4AE7-8FD4-5879B396B53F`,
    DefaultWineAppellation.`8F4A4181-8B25-48B1-885A-A459B97C3994`,
    DefaultWineAppellation.`F9E85263-CF1F-4039-968F-05261839AE64`,
    DefaultWineAppellation.`7CFB17AC-DD29-4B10-9686-A47C867E3BB0`,
    DefaultWineAppellation.`E8735CB9-154F-4A92-936A-530E1FA7CA89`,
    DefaultWineAppellation.`AA10CC5E-DC75-47ED-BC21-22A80447584F`,
    DefaultWineAppellation.`BD373FD9-9457-4CF1-B8AD-70DBF34EED42`,
    DefaultWineAppellation.`CE096002-2AF3-461F-9469-1ACA95A54CB5`,
    DefaultWineAppellation.`5C7DCA40-E0AE-4910-A421-908944CAA776`,
    DefaultWineAppellation.`CE2B53DD-02E9-4019-8F8F-658851F98C8D`,
    DefaultWineAppellation.`003C0EDD-CE34-44D9-AD63-D5BC65B06D76`,
    DefaultWineAppellation.`F012957A-852F-49C9-A16F-7D3FB60F6688`,
    DefaultWineAppellation.`3CD29464-1369-470F-8FEE-F9F6818F9DDC`,
    DefaultWineAppellation.`1B377B41-4D83-454D-A8D8-26BDC67FBF0C`,
    DefaultWineAppellation.`7573A550-C92B-4703-9EC4-0B486025F5C7`,
    DefaultWineAppellation.`973C37C4-599A-42EF-AC27-ECB805CF3357`,
    DefaultWineAppellation.`AF12D054-0E3A-490B-8E11-83C197837969`,
    DefaultWineAppellation.`8494E456-C24F-4C1E-869D-E746260C4AEC`,
    DefaultWineAppellation.`0663BADC-7879-4CCC-8128-E7693273A7EA`,
    DefaultWineAppellation.`3EA9360E-37F8-4825-89AB-74795B8BC84A`,
    DefaultWineAppellation.`3F4B0DAB-A364-4856-BF6E-900D96974CF2`,
    DefaultWineAppellation.`E0C78C45-962F-416C-A508-07907203B06B`,
    DefaultWineAppellation.`88670075-6187-4327-9EF5-0365A0F916F2`,
    DefaultWineAppellation.`E1ECE989-AE1B-41BF-AC5B-A059769F26F7`,
    DefaultWineAppellation.`0B6F7791-88A7-4445-A4E4-D88023499027`,
    DefaultWineAppellation.`CB70508F-4207-4A42-8952-300B4A41F78C`,
    DefaultWineAppellation.`191E4B2F-DF6E-4EAA-9D9C-BB3F27B9048B`,
    DefaultWineAppellation.`92ED98BF-3CB2-4D00-8A9D-5B96D0C8AE34`,
    DefaultWineAppellation.`A4D2B9EB-D298-49D4-8797-45CB264DCE35`,
    DefaultWineAppellation.`081B165C-AB90-4B2A-A72D-69B72FD34513`,
    DefaultWineAppellation.`84F9B549-5131-441B-B410-F5C28364F745`,
    DefaultWineAppellation.`5CBCD050-1641-47E2-A9BA-3A7D973A2FC1`,
    DefaultWineAppellation.`12AFF253-B39A-43C8-B73E-C37BA973E97A`,
    DefaultWineAppellation.`B7D97E5C-5017-4846-B4B7-0E5ADC975590`,
    DefaultWineAppellation.`B3C83087-B7CD-42D3-B86C-CA67CD3F5A88`,
    DefaultWineAppellation.`580D4302-577B-46A6-A8F7-CD167357898E`,
    DefaultWineAppellation.`A99E2EDF-9E9C-415B-BBA4-DB21C38EC5B2`,
    DefaultWineAppellation.`4DF86BC9-5D2E-4A3E-85B1-453416FF4AB6`,
    DefaultWineAppellation.`9FC523A0-7C10-4F00-A5C2-41ACAC60908F`,
    DefaultWineAppellation.`F1DCC235-BCEB-4C3A-B215-43A17BD2A919`,
    DefaultWineAppellation.`28DFA7A5-23F4-40BE-BB3C-C12896A871ED`,
    DefaultWineAppellation.`27007EAD-46CB-47DE-815A-4432A3435839`,
    DefaultWineAppellation.`D48916BA-75FF-4778-AFBD-CF44FCA99820`,
    DefaultWineAppellation.`BB9BE68D-D107-487A-BC4F-8241A7D2460C`,
    DefaultWineAppellation.`5DFE18E2-D820-4AF2-B2AC-1B3ADD19D72B`,
    DefaultWineAppellation.`3E3ECB6B-BBD2-493F-B5CA-B8330B178604`,
    DefaultWineAppellation.`3FB97939-2AE9-4FD1-878E-02A4E20B7DB0`,
    DefaultWineAppellation.`131EA115-3F25-4E0D-A474-4A07070B26F5`,
    DefaultWineAppellation.`03A9FAA0-1B96-4589-9F90-8EF8C1425AA0`,
    DefaultWineAppellation.`5BA190FA-AA1D-4222-AB9F-F74AEFF5C4CD`,
    DefaultWineAppellation.`49F125A5-CE4B-4761-B50A-D0BD463B5779`,
    DefaultWineAppellation.`D5FD7BC7-2BD2-4B0F-AFF8-054951D0A460`,
    DefaultWineAppellation.`006018E1-B746-412A-A3F1-0F24C6D74171`,
    DefaultWineAppellation.`D1E10ED0-A69E-4514-8D51-7E2B7FF1496A`,
    DefaultWineAppellation.`35EC1FD6-E801-406A-A814-CC2AE3865107`,
    DefaultWineAppellation.`B74A8EED-4B76-47CC-9751-18F4E7412F36`,
    DefaultWineAppellation.`9D30F19E-5036-41AA-AF2B-62CDA83F7F4E`,
    DefaultWineAppellation.`F8092A2B-63EE-44C8-B5A7-E53776900D4F`,
    DefaultWineAppellation.`1F6C0D69-E22D-4E36-BE6F-BCAB79666B67`,
    DefaultWineAppellation.`C2295228-C446-4D6A-B377-9AF382B4B3CE`,
    DefaultWineAppellation.`05B8A1B1-807D-4D1E-800E-98DDB3C1ED1C`,
    DefaultWineAppellation.`9AE017B0-5437-4094-AEB3-4C0E6CF0151E`,
    DefaultWineAppellation.`B9CD6011-38FE-454B-B9E7-12BA5A6599DB`,
    DefaultWineAppellation.`CEEBCF9C-05D5-43CD-A626-14D8D708377C`,
    DefaultWineAppellation.`AAB29D3F-3837-4826-89EB-FE25B8871651`,
    DefaultWineAppellation.`D98E141D-8014-46B8-BE9A-319B699312E3`,
    DefaultWineAppellation.`DC3C179C-ABD2-47B3-8949-1C94440E15D3`,
    DefaultWineAppellation.`F3C8A05A-8B2F-4608-9CE7-4A196F9021A9`,
    DefaultWineAppellation.`412D9734-BB2E-42E6-A024-78DAB60FFBB6`,
    DefaultWineAppellation.`646FE43B-1C51-43A6-85E7-0B5D84F45C30`,
    DefaultWineAppellation.`7F8DB593-B562-4950-9205-012BAC794B25`,
    DefaultWineAppellation.`89C9A2F1-7742-46DB-B954-19A2D6FC0695`,
    DefaultWineAppellation.`B12D4DB9-52DD-4832-9C6B-AD6BE8EB1CC4`,
    DefaultWineAppellation.`6E94F48C-5009-4CF8-BAFD-F181432E859A`,
    DefaultWineAppellation.`67FC57B8-94B6-4779-865D-4A7EF736291B`,
    DefaultWineAppellation.`B2D30B2B-5962-474F-A4BB-E470D76091AB`,
    DefaultWineAppellation.`396A533A-431D-431A-A8A0-9676EF364B0C`,
    DefaultWineAppellation.`CF942974-4679-4F2E-9A82-D67E915B6A1A`,
    DefaultWineAppellation.`13631626-F132-4735-9180-F9ACA30323BD`,
    DefaultWineAppellation.`6E1338E7-5072-454B-9126-76C8489858A0`,
    DefaultWineAppellation.`9EF323B0-5E0B-4665-9435-9A5CFB4ABA20`,
    DefaultWineAppellation.`5EE4589E-5A83-4AE6-A434-6708754BFDDA`,
    DefaultWineAppellation.`BA1C46F7-51CD-4AA0-9C04-16FC27054514`,
    DefaultWineAppellation.`3F03439C-0CB3-4142-B51E-C72169A4BCB9`,
    DefaultWineAppellation.`CEFB0680-730F-46FD-A969-99A3D8AB8ED0`,
    DefaultWineAppellation.`4433D322-AE75-4F07-AA4A-410D7C5CA038`,
    DefaultWineAppellation.`6EC7CE1E-9345-466E-864F-C1BC572ADC4A`,
    DefaultWineAppellation.`301378E2-B67B-47F8-81C7-F5F82A1203DD`,
    DefaultWineAppellation.`3BB976D5-A1B7-4342-AC63-E1DE109C00C6`,
    DefaultWineAppellation.`7C444C1F-BE2B-44BD-AE7C-13BAF712A804`,
    DefaultWineAppellation.`CF67F19B-550E-4D26-87A3-AB108D4B0789`,
    DefaultWineAppellation.`AE5D676A-456C-4082-B841-8C50EAB2F254`,
    DefaultWineAppellation.`7118E168-AB7B-4D00-90C7-FC427CF6D290`,
    DefaultWineAppellation.`3C70E519-7238-4808-9E88-3CDB8EF85CEF`,
    DefaultWineAppellation.`876D945C-4880-42B8-B36D-54C03A7C6152`,
    DefaultWineAppellation.`04C6EC44-A153-4694-BCDF-54A02433C5AB`,
    DefaultWineAppellation.`6958F569-85EE-470D-B776-D847D17B945E`,
    DefaultWineAppellation.`50A1B2AF-CC82-498C-A599-B6A4BDC8F973`,
    DefaultWineAppellation.`653744E5-A0A3-413C-844B-30B93CAD336F`,
    DefaultWineAppellation.`0FC0BA71-1832-4F7A-B963-2AED8B8B983A`,
    DefaultWineAppellation.`B490CE80-82D9-4ECA-8DB4-9C1F51C9EF61`,
    DefaultWineAppellation.`057E9E52-0230-4598-B533-4DC2E5A163EE`,
    DefaultWineAppellation.`AE6D8CBF-134C-4B5F-96D0-9CB805F168FE`,
    DefaultWineAppellation.`5CC9B807-E4D3-47FE-904B-F09F75961A43`,
    DefaultWineAppellation.`EB1771B9-3E75-4D22-8247-2A1B9CD4B2CC`,
    DefaultWineAppellation.`36551A5F-D8E2-4383-9D7F-E22F3B872545`,
    DefaultWineAppellation.`706072C5-CEC0-4503-926A-3C3A961F18E6`,
    DefaultWineAppellation.`9778A629-DD81-4FF7-9C0D-D8D44BED27F6`,
    DefaultWineAppellation.`2E621D7E-57DB-41DD-BFAB-BB7442C4B4F2`,
    DefaultWineAppellation.`8DAC1F44-04E0-4368-A7E3-4687FA41AE73`,
    DefaultWineAppellation.`3178AFAD-E84B-41C7-AF72-D5145D08443E`,
    DefaultWineAppellation.`5DEE3F25-5CE1-4969-A577-C03A2DB7C725`,
    DefaultWineAppellation.`74DD40C1-E358-4BFF-939E-3806BFFDBC09`,
    DefaultWineAppellation.`A1E830E0-6AB8-46C6-9729-A36871DCD7A9`,
    DefaultWineAppellation.`EF2C3A4D-BCAB-4C36-9142-502AA11E4428`,
    DefaultWineAppellation.`6BB16477-FB73-4920-843C-A9B92BFAE2DA`,
    DefaultWineAppellation.`A3A00CD4-0035-4634-B5C9-CD05D160E598`,
    DefaultWineAppellation.`3D28B9AF-C00A-4213-82AF-259269BF3941`,
    DefaultWineAppellation.`5A87B175-EF1E-4F26-9534-7541CC6E7F62`,
    DefaultWineAppellation.`05E7C31B-D127-432D-BB1B-C301A28D61E4`,
    DefaultWineAppellation.`EE1EDEFA-CF9A-4E3F-9D75-9B74C7140AF6`,
    DefaultWineAppellation.`450BABBB-2F89-4A58-A583-89A4C8948063`,
    DefaultWineAppellation.`7B85BD64-4085-4885-A782-29DBF252F0E0`,
    DefaultWineAppellation.`26994955-CE1E-42A8-ACD7-3832099716A4`,
    DefaultWineAppellation.`78F1A613-E9C5-4918-AD45-F0C21948C26C`,
    DefaultWineAppellation.`1211A71F-FE3E-4F5B-BC3D-F0D6F3BC8054`,
    DefaultWineAppellation.`A73BCA15-4289-4138-9711-050E35FAED4C`,
    DefaultWineAppellation.`288FBA7E-B40E-48CD-B222-9395EA132A3B`,
    DefaultWineAppellation.`80AB2CFA-0155-43E4-BCB4-0F8457DD4C4A`,
    DefaultWineAppellation.`B43855FA-6434-4D6C-866D-3D0FE95E93C8`,
    DefaultWineAppellation.`335E5303-C4E7-423C-B29D-6C8D048F595B`,
    DefaultWineAppellation.`BD86F5FB-0410-4468-8A01-1B023629978A`,
    DefaultWineAppellation.`768A34AB-5ADA-40EE-97E0-446105232ACF`,
    DefaultWineAppellation.`427CAF94-AD2E-428C-9C22-A13F775EB1B3`,
    DefaultWineAppellation.`81CE2438-E66D-4D7E-97DA-6D229B02BE0D`,
    DefaultWineAppellation.`DC802396-BC00-4B09-913E-BF5A47494B60`,
    DefaultWineAppellation.`15477B3E-C8D3-41FC-8E88-1A502E5838E8`,
    DefaultWineAppellation.`06F194B3-B246-4F40-BA69-B3A19055E18A`,
    DefaultWineAppellation.`6E8107B5-9268-4B75-827C-AD0B4578D7B9`,
    DefaultWineAppellation.`01D20B6D-4D28-486D-A577-1F91E9559ECF`,
    DefaultWineAppellation.`5176583B-9E29-42EC-95D9-B52466E4759B`,
    DefaultWineAppellation.`B7E1366C-C464-4F6F-9128-1C3330E88614`,
    DefaultWineAppellation.`46DCF7C2-3F3B-436A-92D0-D929FE92B0FD`,
    DefaultWineAppellation.`64C1ACE1-80C9-4DB5-935D-59ED6F088844`,
    DefaultWineAppellation.`8C2EED6E-D4E1-4BA7-8E60-BE1F8EAF752F`,
    DefaultWineAppellation.`CE778FCD-C2D7-4F3D-B7D0-74EF87656F4A`,
    DefaultWineAppellation.`CD2A9FDF-8EF7-4F1A-9D3A-2F8579752BF6`,
    DefaultWineAppellation.`5F865DC7-14FC-4DC2-8592-BF395D9C3453`,
    DefaultWineAppellation.`3017914E-D496-42A0-8ECC-F1180F6902C4`,
    DefaultWineAppellation.`9A768FA0-B523-4647-AC7E-B359D0DDB980`,
    DefaultWineAppellation.`844DAABF-6F6A-4AB4-8649-6CCEB72ED5D1`,
    DefaultWineAppellation.`7A4E6F0A-85D5-4082-A489-1738A0AD834D`,
    DefaultWineAppellation.`6B4D2A0D-9788-4396-858A-433BD6DFE9F3`,
    DefaultWineAppellation.`47209B5E-0A79-43C4-9830-3C3B5E0351F0`,
    DefaultWineAppellation.`DD2ACCFB-D574-40BF-B5A2-184A94DB7FDA`,
    DefaultWineAppellation.`685A0D2E-1A8A-4EFD-B38B-CEB19B3117E0`,
    DefaultWineAppellation.`CFEA6748-6A41-4AEB-A62C-10F965F09470`,
    DefaultWineAppellation.`3729BB09-D79C-495A-AF99-857097628952`,
    DefaultWineAppellation.`72C66B49-2730-4ADB-B219-05005456F69E`,
    DefaultWineAppellation.`FE6D6659-C4A6-4E43-AD75-D2004FB04D17`,
    DefaultWineAppellation.`4D0A291A-3487-4D2F-9E75-DA872BD7D985`,
    DefaultWineAppellation.`E05078B7-7E6C-4798-92BB-3D5F270AEE2B`,
    DefaultWineAppellation.`7E1E1EF0-F0E8-4F51-8C5B-AC4F456C5A78`,
    DefaultWineAppellation.`2AA335BC-0216-4EC3-A7F3-181729517C35`,
    DefaultWineAppellation.`8AFBEF20-AF9C-4C42-AD15-9C6A0B7B477A`,
    DefaultWineAppellation.`E81E9D70-27D6-4D4D-8B6A-9252090E32AC`,
    DefaultWineAppellation.`1B524C7E-E4F4-41BA-97DA-B787727961C4`,
    DefaultWineAppellation.`FF098574-1B78-4614-BA80-36214FBBEAB1`,
    DefaultWineAppellation.`ECA4353F-1F3D-452D-9D5B-1587E5072FB8`,
    DefaultWineAppellation.`B73F1CD1-964C-448C-B464-F2E343128983`,
    DefaultWineAppellation.`F33B1C96-9596-4C80-A63F-35E8C4AA02C7`,
    DefaultWineAppellation.`52CA958E-F009-4075-8EAE-8FA938F80DF4`,
    DefaultWineAppellation.`30854320-ADAA-46B9-B90D-8C2020DD4666`,
    DefaultWineAppellation.`D0325C95-89EA-43D4-8D3F-1FC61EBBB325`,
    DefaultWineAppellation.`880DDB63-6A76-4B5C-A8B6-97862E5338FE`,
    DefaultWineAppellation.`CED3B99E-BE40-422B-81AD-2B87E89CE43A`,
    DefaultWineAppellation.`A1EEB60C-465B-4764-9AEB-7A5A255F4BD5`,
    DefaultWineAppellation.`7F26AC7C-33E7-4A58-8BD3-0324B6A45F92`,
    DefaultWineAppellation.`24CFE652-A26C-45DC-91F0-3B4E50AA5A90`,
    DefaultWineAppellation.`45C7F63F-2CF7-4D0E-B969-E07DD7C4CDDE`,
    DefaultWineAppellation.`22985F40-6625-47D5-8C68-825D4B8EB92F`,
    DefaultWineAppellation.`8E066DD5-A43C-4F8D-942C-E642D1804376`,
    DefaultWineAppellation.`6CCF9C03-FB5C-47EC-9745-8F27366D8BE8`,
    DefaultWineAppellation.`0B569BFD-9DBE-400F-BABE-E22B61BC9601`,
    DefaultWineAppellation.`5E2EB867-B05A-4F4E-9FF1-43F5DDB8AD09`,
    DefaultWineAppellation.`5311699F-9D3A-4214-B807-288D02AB1FF2`,
    DefaultWineAppellation.`C889D871-426E-43B5-BF84-B4C08E11CB2D`,
    DefaultWineAppellation.`1E8BFA1F-11BA-44D9-8848-22470C768B34`,
    DefaultWineAppellation.`233074CF-98F7-4D9C-80A9-BE1A7A2B575C`,
    DefaultWineAppellation.`1050A170-4A49-4E92-BF64-AF9B36AB049E`,
    DefaultWineAppellation.`7D6DDED0-41D7-4823-B40F-A7253D47BD93`,
    DefaultWineAppellation.`20AB9179-A123-45BE-8298-CAA235374877`,
    DefaultWineAppellation.`71579932-FB87-47A9-B1EB-D72C73306F9E`,
    DefaultWineAppellation.`D9ACADDD-E6C1-4427-8B6A-499AB61FEE16`,
    DefaultWineAppellation.`D052B3A2-1F1F-4B45-AE7E-D1CF4827C7D9`,
    DefaultWineAppellation.`3C1A66EA-C0D1-47F5-AD7A-2BA1BB7738FF`,
    DefaultWineAppellation.`8F6A62BE-A70B-4880-81FE-2DE5F319CCB0`,
    DefaultWineAppellation.`23D0EC95-7E71-4D4D-B18E-C34E08E216D3`,
    DefaultWineAppellation.`E0CB0597-AC93-4648-A263-FC035820BB30`,
    DefaultWineAppellation.`5310368D-B278-4240-A9A5-2C34BC9D72EE`,
    DefaultWineAppellation.`2C99B68F-2A20-4A52-9438-BB4416990BD1`,
    DefaultWineAppellation.`82EA5489-A65E-4745-AD41-3FEAE146EC25`,
    DefaultWineAppellation.`30FAB3EE-F847-4020-ADA0-C172D06A6568`,
    DefaultWineAppellation.`A4EEB29F-D5E0-4405-8930-90573F5AFB70`,
    DefaultWineAppellation.`B69A6E55-4ACB-4A58-B91C-A2E1B22C9971`,
    DefaultWineAppellation.`78E78BF5-EBFB-41C1-8280-F337FA877A28`,
    DefaultWineAppellation.`740BBA08-5766-4C35-BBA1-438AC5AFCE56`,
    DefaultWineAppellation.`333089A7-7929-4558-87FC-36A2CED40BC7`,
    DefaultWineAppellation.`56BCDC5F-4468-48AA-A9BD-9E80BADB8522`,
    DefaultWineAppellation.`7E5861B7-A6BF-4ECC-80B0-82EFBB0A33A5`,
    DefaultWineAppellation.`E61D62CC-E407-4EB7-87AF-5C7681EDD14F`,
    DefaultWineAppellation.`651158CD-0314-4F40-AD33-2A6FBAE16B4F`,
    DefaultWineAppellation.`B7124985-FAFE-4351-AFC0-D562CF68D76D`,
    DefaultWineAppellation.`17399762-226F-49DC-B2F3-783CDEE7E8BE`,
    DefaultWineAppellation.`4B33370B-4774-4D7A-ABF5-6FE4C24463E5`,
    DefaultWineAppellation.`4DF5C4A8-E4FE-4160-96DC-F9EA5152E04E`,
    DefaultWineAppellation.`1FD364F6-0EDB-4160-9143-36552045A651`,
    DefaultWineAppellation.`A232AD0F-EAB4-4D9A-93AC-D24DFC4401EC`,
    DefaultWineAppellation.`C29814CD-F3F2-4648-AD7F-DCAB1C6E3329`,
    DefaultWineAppellation.`B86B915D-AC2A-492E-A46E-75B03BAD93BA`,
    DefaultWineAppellation.`072E1640-A63A-4DD2-97A0-7CB50509748D`,
    DefaultWineAppellation.`9FD7ABAF-1E8A-4300-89C5-31492DF38BFC`,
    DefaultWineAppellation.`98525671-567A-4D28-B17B-AD81AD1749EF`,
    DefaultWineAppellation.`3589E6AC-8AEA-4027-965E-4D00853B46A1`,
    DefaultWineAppellation.`189368EF-B44F-422C-BFB1-1F2C05E5C2F9`,
    DefaultWineAppellation.`C916071E-BD2C-4408-93E1-A5AD4E762D7F`,
    DefaultWineAppellation.`2FA45CBE-BA46-4F52-ADF5-86FD247F6A84`,
    DefaultWineAppellation.`7AE64A7F-88D6-44E7-A709-36032824BABC`,
    DefaultWineAppellation.`BE6A7E7C-9C70-45D6-ACC0-D5548B71A1BC`,
    DefaultWineAppellation.`72044FC3-4D5E-4FA8-B623-71C91E044B24`,
    DefaultWineAppellation.`28E9FEC3-4924-45D2-904C-8BA0C11E3555`,
    DefaultWineAppellation.`6636B99E-3519-46A1-8DC9-1B23C1F13E7F`,
    DefaultWineAppellation.`7B0011D5-3437-4B7E-91A3-66B0CE0ED179`,
    DefaultWineAppellation.`962D819F-1043-4883-8361-FD94C5199C56`,
    DefaultWineAppellation.`09F663D8-9728-4A06-9E1E-71C462D764D9`,
    DefaultWineAppellation.`2677CE1E-267A-48BE-9253-72502F14FF58`,
    DefaultWineAppellation.`30192FF9-6539-4ECC-8F8F-F1428863298D`,
    DefaultWineAppellation.`78BA8F88-1E35-4C31-BBB6-CAC74C86CED8`,
    DefaultWineAppellation.`95B1859D-0637-448C-83AD-C75E40297563`,
    DefaultWineAppellation.`D5483509-5A41-4041-8F8E-006B34BA3F48`,
    DefaultWineAppellation.`42519D85-48F9-4219-8BD5-BB2A43FA3C2F`,
    DefaultWineAppellation.`C1DDE9BF-663B-4DBE-9D6F-F59FC7D2E633`,
    DefaultWineAppellation.`574739B5-F394-4DB6-82CC-FC6C0D4C808A`,
    DefaultWineAppellation.`CFB25C3D-3C0F-493D-AC94-1CD126043F30`,
    DefaultWineAppellation.`B18FAF00-2B2F-4652-9E8F-0FB13A3FA087`,
    DefaultWineAppellation.`8DC99C41-2EDD-462E-B117-3A76E65A48D2`,
    DefaultWineAppellation.`1C53E54D-EB38-4A50-8E0D-C5CC7DB9A0AA`,
    DefaultWineAppellation.`64351BC2-F0EE-4A30-B95D-30FEC5E64AC5`,
    DefaultWineAppellation.`DEB0A66A-C610-4562-9607-1E8511DAA210`,
    DefaultWineAppellation.`AB539D5F-D8A1-4469-84A5-F0E737F1A7AE`,
    DefaultWineAppellation.`BED08571-4765-4926-83EC-9FDD5F45B52E`,
    DefaultWineAppellation.`BF8BA490-ECD4-483F-8228-8EC60ABFD0AE`,
    DefaultWineAppellation.`66F6C46C-BA3D-4F64-99A1-087C82A46049`,
    DefaultWineAppellation.`C580E687-A85E-4368-90ED-58F52592E096`,
    DefaultWineAppellation.`3FD561A9-B9E0-4C04-AD7C-A05AFB820063`,
    DefaultWineAppellation.`F2097F38-E6DA-469B-9E02-0F6B68C694D7`,
    DefaultWineAppellation.`E9571E99-26A2-46FD-9260-6B1835C7B665`,
    DefaultWineAppellation.`EED902AA-77A0-4AFB-A0E7-2B4893BC042A`,
    DefaultWineAppellation.`AAEAE170-D185-4967-941F-9ABFD52810D5`,
    DefaultWineAppellation.`F645D5F3-07FE-4219-8047-82FD0A762CB4`,
    DefaultWineAppellation.`7AA71135-A98D-47F5-BF1F-99012FE37B9A`,
    DefaultWineAppellation.`6759069F-BA9E-4908-A8F2-AD09D9976CDF`,
    DefaultWineAppellation.`E7C5D1D9-B93E-4EF6-BD63-E5B9D8C07E61`,
    DefaultWineAppellation.`09FB8340-6BFA-4B6C-AA29-8304E920E97E`,
    DefaultWineAppellation.`C01316D9-75FA-4ECA-B68F-14E68BFD4C28`,
    DefaultWineAppellation.`D90906E2-AA1B-495D-BE0A-EC77B052F2BB`,
    DefaultWineAppellation.`5BB1031B-7BAC-424B-A0F2-FC1EDC83743C`,
    DefaultWineAppellation.`C67FD71A-5D19-4739-908B-8BDA95C8160E`,
    DefaultWineAppellation.`8A31B6A1-3C9E-4EBD-85DF-9BD071E320F3`,
    DefaultWineAppellation.`4B7664B3-3D19-4AC0-9ABE-99DCF49FD384`,
    DefaultWineAppellation.`1ACCD8B9-7DFC-4379-88D4-42000E86DA8A`,
    DefaultWineAppellation.`35688C17-7499-49B5-9683-5D1C9C9A2B45`,
    DefaultWineAppellation.`7285E2F8-B377-4BDA-BEB6-47E515F01623`,
    DefaultWineAppellation.`B711FB1C-18EE-4784-99F3-F1E0787D363B`,
    DefaultWineAppellation.`99F7AD49-D6BC-4DC7-9F07-06D1DC48940A`,
    DefaultWineAppellation.`CFCA3761-3D27-4E58-8B49-169530424F94`,
    DefaultWineAppellation.`0602F999-087E-4BEF-94AE-CF3DEBF929B5`,
    DefaultWineAppellation.`FF252AAC-6CB4-4644-9B48-5E41B664C3A9`,
    DefaultWineAppellation.`7FB9CC56-9B09-4850-BAD4-8FA912547BD3`,
    DefaultWineAppellation.`2260C69D-CA91-4D7A-ACB4-8090D58B32FB`,
    DefaultWineAppellation.`F7B06832-FEE2-496A-B10A-34BD24440C19`,
    DefaultWineAppellation.`60C57DFF-49E2-4E6B-943D-4AA150A1AA78`,
    DefaultWineAppellation.`CF28D1FD-1760-4CAE-ADD2-19ABFBFC3B51`,
    DefaultWineAppellation.`C7A793AE-37BE-4FFB-9C0B-B0E1479B04AE`,
    DefaultWineAppellation.`6520917F-ECAC-45CA-AB50-3D8B8BA75271`,
    DefaultWineAppellation.`BD330C79-5892-4FBD-9C22-40E80D1D0AF2`,
    DefaultWineAppellation.`600694D8-1133-4273-8F45-ADC735442A06`,
    DefaultWineAppellation.`D3B1E993-75C7-48C3-989C-7A427C5C6F91`,
    DefaultWineAppellation.`E619E65C-B2C7-4DA3-BFBC-B59D59546AEA`,
    DefaultWineAppellation.`63DAF36D-6DAF-48EE-8B9C-EE6EECBF84D6`,
    DefaultWineAppellation.`67A53E84-0583-4632-A028-98AEFE4FE3CB`,
    DefaultWineAppellation.`0743E6D8-6EF2-4A5C-AE30-15C5C416C243`,
    DefaultWineAppellation.`67C1C449-A264-4F0E-AB10-83614F6B1934`,
    DefaultWineAppellation.`D240626A-4655-4B87-987F-ACD87C9D5EFF`,
    DefaultWineAppellation.`FA376B46-1E21-4CF1-BCE2-96A5718F2FAB`,
    DefaultWineAppellation.`B0FADF2A-2630-4525-93C5-877378871F8B`,
    DefaultWineAppellation.`F99A178A-F067-40FB-8B7E-26434294B42B`,
    DefaultWineAppellation.`BB203EE0-ED34-4855-B4BC-8AF5295702A8`,
    DefaultWineAppellation.`EC347169-C506-47DE-9B42-0931C30E3B1A`,
    DefaultWineAppellation.`D454E68A-19D6-4292-B74D-5F1E71AE31C3`,
    DefaultWineAppellation.`5EC17C9C-BCA6-4018-9C1C-E1DA64235CB1`,
    DefaultWineAppellation.`BB8178C2-B1C2-49C4-9427-1433EAC3A76F`,
    DefaultWineAppellation.`8D613DA7-5D70-48F7-BD13-25C9B6C3A246`,
    DefaultWineAppellation.`724E7B57-33BC-4E13-AEBE-5D8168FF231D`,
    DefaultWineAppellation.`42D6F9D8-E2BF-4A2E-9AFC-6FC99B0060BB`,
    DefaultWineAppellation.`CB34A249-AA32-4439-A31A-93797ABC516A`,
    DefaultWineAppellation.`8E7A02CC-3C26-4EDE-8D56-FCF6CED6E7B9`,
    DefaultWineAppellation.`0EF67466-6F1D-4859-AEF8-16F88846637E`,
    DefaultWineAppellation.`D711F6F0-C0D9-49A5-9351-E1B9337C664C`
]

extension DefaultGrapeVariety {
    static let `45E684EA-B8EA-4E00-B0F8-22914A84834F` = DefaultGrapeVariety(
        id: UUID(uuidString: "45E684EA-B8EA-4E00-B0F8-22914A84834F")!,
        name: "Altesse",
        description: """
        ## Un cépage blanc originaire de Savoie\n\nOriginaire des régions montagnardes, l'altesse se cultive sur près de 500&nbsp;hectares de vignes, sur&nbsp;les terrains pentus et calcaires de la Savoie. Importé&nbsp;de Chypre par un duc de Savoie, ce cépage se trouve désormais aussi dans l'Ain&nbsp;et l'Isère et en Suisse romande. Mais c'est principalement en&nbsp;terres savoyardes qu'il prend racine.\n\n## Assemblages et appellations d'origine contrôlée\n\nAssemblée au&nbsp;chardonnay et à la mondeuse, deux autres&nbsp;cépages blancs de Savoie, l'altesse&nbsp;se retrouve dans&nbsp;la roussette, un vin typique de la région. Elle est présente dans les crus locaux frangy, marestel, monterminod et monthoux, qui sont les plus renommés du territoire. Assemblée au cépage molette, elle produit des vins&nbsp;pétillants&nbsp;d'appellation d'origine contrôlée seyssel.\n\n## Un cépage aromatique qui vieillit bien\n\nLors de sa culture, l'altesse est un cépage très&nbsp;fragile, qui peut souffrir de nombreuses maladies, comme la pourriture grise causée par un champignon à l'approche des vendanges. Reconnaissable grâce à ses grappes de petite&nbsp;ou de moyenne taille et ses jeunes feuilles&nbsp;à la couleur prononcée, l'altesse est un cépage noble très parfumé&nbsp;qui délivre des arômes fruités d’ananas et de citron, avec des notes d’amande et de miel. Les crus&nbsp;produits grâce à ce cépage, que l'on surnomme également fusette d'Ambérieu ou encore roussette de Montagnieu, sont essentiellement&nbsp;secs,&nbsp;mais ils peuvent être&nbsp;moelleux, voire liquoreux. Sa bonne acidité lui permet de bien supporter le vieillissement.&nbsp;
        """,
        color: .white,
        synonyms: [
            "Roussette"
        ]
    )

    static let `099ED505-9EFD-496B-841F-314EB4BBF816` = DefaultGrapeVariety(
        id: UUID(uuidString: "099ED505-9EFD-496B-841F-314EB4BBF816")!,
        name: "Aspiran",
        description: """
        ## L'aspiran&nbsp;: des origines gallo-romaines\n\nÉgalement appelé rivairenc, ribeyrenc et verdal, l'aspiran est un cépage très ancien, dont on retrouve des traces à l'époque gallo-romaine. C'est de la région languedocienne qu'il tire son origine, et il est aujourd'hui peu répandu sur le territoire français. En effet, c'est un cépage rustique qui aime les sols plutôt arides et rocailleux.\n\n## Dans quelles appellations peut-on retrouver l'aspiran ?\n\nL'aspiran est utilisé dans l'encépagement du vin Minervois-la-Livinière et des minervois. Il donne un vin parfumé avec délicatesse, fin et vif, qui se pare d'une couleur délicate. Le cépage languedocien était d'ailleurs très prisé autrefois en tant que raisin de table. Lorsqu'ils sont bien murs, ses grains charnus offrent en effet un goût très sucré et sont agréablement juteux.\n\n## Comment reconnaître les grappes d'aspiran ?\n\nLe cépage aspiran est facilement reconnaissable à la taille courte de ses pieds de vigne, mais aussi à ses grappes de taille moyenne et coniques. La peau des baies est plutôt mince, même si elle est très résistante, et s'orne d'une teinte noir violacé, translucide lorsque le raisin arrive à pleine maturité. On trouve également des grains de raisin gris, roses ou blancs. Moyennement productif, le cépage aspiran est sensible aux gelées hivernales. Ses bourgeons s'ouvrent tardivement.
        """,
        color: .black,
        synonyms: [
            "Rivairenc"
        ]
    )

    static let `F7457F6A-46C7-44DB-A6A6-4C9066314129` = DefaultGrapeVariety(
        id: UUID(uuidString: "F7457F6A-46C7-44DB-A6A6-4C9066314129")!,
        name: "Aspiran",
        description: """
        ## Un cépage très ancien\n\nLe rivairenc cépage gris est originaire du Languedoc. La ville d’Aspiran n’a aucun lien avec l'une de ses appellations. Ce cépage est apparu il y a&nbsp;plus de 1&nbsp;500&nbsp;ans, durant l’époque gallo-romaine. Il était alors très répandu. Il s'est développé&nbsp;sur les terres de la région pourtant pauvres et rocailleuses. On pourrait en déduire que ce cépage est résistant. Cependant, il ne supporte guère les gelées hivernales. À l'heure actuelle, on en trouve très peu.\n\n## L'aspiran&nbsp;: aussi bien raisin de table que de cuve\n\nL’aspiran peut être utilisé comme raisin de table. C’était d’ailleurs sa principale utilisation par le passé, en raison de sa saveur sucrée et de sa faible durée de conservation. Et il est aussi un raisin de cuve,&nbsp;notamment utilisé dans l’encépagement du minervois, un grand vin du Languedoc. Les caractéristiques de l’aspiran gris apportent de l’élégance et de la délicatesse au vin. Les amateurs de ce cépage apprécient notamment sa finesse en bouche.\n\n## Un cépage délicatement parfumé\n\nLes plants sont assez petits, le pied est peu vigoureux. Son bourgeonnement est plutôt tardif. Quant aux grappes, une fois mûres, elles sont fournies en apparence. La peau des raisins est solide, de couleur grise et peu épaisse. Leur chair est juteuse et délicatement parfumée. Leur goût est à la fois prononcé et doux. Au niveau de l’aspect visuel, sa couleur est légère et belle.
        """,
        color: .grey,
        synonyms: [
            "Rivairenc"
        ]
    )

    static let `E4778958-4EF1-45AA-98A7-060DC0AB7BDE` = DefaultGrapeVariety(
        id: UUID(uuidString: "E4778958-4EF1-45AA-98A7-060DC0AB7BDE")!,
        name: "Arbois",
        description: """
        ## Arbois&nbsp;: les origines du cépage\n\nL'arbois, aussi appelé orbois, verdet, herbois, menu pineau ou orboué, est un cépage originaire de la région Val de Loire. Peu cultivé sur le territoire français, il couvre environ 600&nbsp;hectares du Loir-et-Cher. Attention, il ne faut pas le confondre avec l'arbois, un vin du Jura. Le cépage du même nom n'est pas cultivé dans la région jurassienne ! Il n'a d'ailleurs pas été exporté dans d'autres régions que le Loir-et-Cher.\n\n## Dans quelle AOC retrouve-t-on l'arbois ?\n\nMajoritairement utilisé en assemblage, l'arbois se dévoile dans l'encépagement du crémant de Loire. On le retrouve également dans les vins cheverny, valençay et vouvray et dans les AOC Touraine. Ce cépage vigoureux ne fait cependant pas partie des plus productifs, car il donne entre 40 et 80&nbsp;hectolitres par hectare. Le vin est sec et frais, avec peu d'acidité.\n\n## Des grappes facilement reconnaissables\n\nLes cépages d'arbois se distinguent à leurs grappes moyennes, pignées et tronconiques, d'une taille de 16&nbsp;cm maximum. Les baies sont compactes et font moins de 12&nbsp;mm de diamètre. Elles se parent d'une belle couleur blanche dorée. Quant aux feuilles, elles s'ornent d'une forme de lyre facilement reconnaissable. Les bourgeons sortent tôt et arrivent à maturité à la deuxième époque moyenne. Les grains du raisin sont alors particulièrement juteux et sucrés.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `8E6E93CD-498C-420E-8EAF-4FD90F635FA0` = DefaultGrapeVariety(
        id: UUID(uuidString: "8E6E93CD-498C-420E-8EAF-4FD90F635FA0")!,
        name: "Aligoté",
        description: """
        ## Aligoté&nbsp;: les origines du cépage\n\nOn retrouve les traces du cépage aligoté en Bourgogne dès le XVIIe&nbsp;siècle. L’aligoté est implanté dans 4&nbsp;départements&nbsp;: la Côte-d’Or, l’Yonne, le Rhône et la Saône-et-Loire. Il couvre à lui seul près de 1&nbsp;600&nbsp;hectares de vignobles. L’aligoté s’est également exporté à travers le monde notamment dans les pays de l’Est comme la Crimée et la Roumanie, mais aussi sur le continent américain comme au Chili ou encore en Californie.\n\n## Dans quelle AOC retrouve-t-on l’aligoté&nbsp;?\n\nL’aligoté est un raisin de cuve. C’est un cépage rustique principalement travaillé en monocépage pour la production de vins d’appellation bourgogne aligoté et l’AOC village bouzeron. On le retrouve aussi en assemblage dans les vins AOC coteaux-bourguignons et dans les vins effervescents comme le crémant de Bourgogne. L’aligoté est vendangé à maturité de façon manuelle ou mécanique. L’aligoté est réputé pour être l’élément de base du kir avec la crème de cassis.\n\n## Des feuilles remarquables\n\nLe cépage aligoté est composé de petites à moyennes grappes de couleur blanc doré à blanc orangé lorsqu’il atteint la maturité. Ses feuilles sont grandes et vertes avec des reflets de couleur bronze. Ce cépage donne un rendement assez intensif, supérieur à celui du chardonnay notamment. Il est sensible à certaines maladies comme le mildiou et la pourriture grise.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `C8710C78-B0FB-44A4-BAC2-1C06FB56344D` = DefaultGrapeVariety(
        id: UUID(uuidString: "C8710C78-B0FB-44A4-BAC2-1C06FB56344D")!,
        name: "Abondant",
        description: """
        ## Un cépage de l'Est dans des vins du Sud\n\nAppelé aussi wanner,&nbsp;d'après le lorrain Alexandre Wanner qui l'a conçu, l'abandon blanc&nbsp;provient pour certains d'un semis de sylvaner. Des analyses génétiques récentes montrent qu'il serait plutôt issu d'un croisement entre la madeleine royale et le Kövindinka. Utilisé jusque dans les années&nbsp;90 dans les vignobles de l'est de la France, il n'est à présent répertorié que dans des IGP du sud de la France.\n\n## Un cépage de cuve qui se raréfie\n\nCe raisin, réservé à la cuve, est en nette voie de disparition. Il n'est que très rarement mis à la culture à l'heure actuelle (0,8&nbsp;hectare en 2018 contre 21&nbsp;hectares en 1958). Il est pourtant considéré comme cépage principal dans&nbsp;trois IGP du Périgord et de l'Atlantique, pour les vins blancs uniquement. Neuf autres IGP du Vaucluse, du Gers et des Hautes-Alpes peuvent l'utiliser en assemblage dans des vins tranquilles (à moins de 15&nbsp;%), rouges, blancs et rosés.\n\n## Des vins blancs neutres\n\nLe wanner est une variété robuste et fertile, notamment en taille courte, dont les baies arrondies peuvent devenir grosses et juteuses. Les vins blancs qu'il produit sont assez neutres et manquent d'originalité, pour les spécialistes. Cela expliquerait le désintérêt des vignerons pour ce cépage ancien qui résiste pourtant assez bien&nbsp;aux maladies de la vigne, comme l'oïdium ou le black rot.\n\n## LES AUTRES CEPAGES&nbsp;
        """,
        color: .white,
        synonyms: [
            "Wanner"
        ]
    )

    static let `E7CDA332-C248-4F0E-8A6C-CF675B25C9BE` = DefaultGrapeVariety(
        id: UUID(uuidString: "E7CDA332-C248-4F0E-8A6C-CF675B25C9BE")!,
        name: "Aspiran",
        description: """
        ## L'aspiran blanc&nbsp;: un cépage du Languedoc\n\nL’aspiran ou rivairenc cépage blanc provient du territoire du Languedoc, situé en Occitanie. Aspiran est aussi le nom d’une ville de la région, mais cela n’a rien à voir avec le cépage en question. L’aspiran cépage blanc servait déjà à concevoir du vin à l’époque gallo-romaine. À cette période, et contrairement à aujourd’hui, la région était parsemée de ses plants. De nos jours, il est en effet plus rare d’en trouver.\n\n## L'aspiran&nbsp;: particulièrement adapté pour les desserts\n\nL’aspiran blanc est un excellent raisin de table. Son goût sucré lui permet de faire fureur sur les étals de fruits. Il peut être utilisé pour des recettes sucrées. C’est aussi un raisin de cuve, mais sa durée de conservation est faible. On le retrouve mélangé à d’autres cépages dans des vins AOC minervois. Les œnophiles apprécient la subtilité du rivairenc blanc, qui procure au vin une certaine douceur ainsi qu’une belle couleur.\n\n## Un cépage aux grappes blanches\n\nL’aspiran blanc se distingue des autres cépages par la finesse de son pied et la petite taille de ses plants. Et il bourgeonne plus tard. Parmi ses spécificités, cette variété évolue sur des terres arides et rocailleuses. En revanche, elle résiste mal aux épisodes de gelées. À maturation, les grappes ont une teinte blanche. La chair est pleine de jus, le goût est sucré.
        """,
        color: .white,
        synonyms: [
            "Rivairenc"
        ]
    )

    static let `96501D60-8312-4DF5-BFBC-50585A87FF49` = DefaultGrapeVariety(
        id: UUID(uuidString: "96501D60-8312-4DF5-BFBC-50585A87FF49")!,
        name: "Aramon",
        description: """
        ## Un cépage&nbsp;cultivé dans le sud de la France\n\nL’aramon blanc est un cépage français que l’on cultive essentiellement dans le vignoble du Languedoc-Roussillon. Il s’agit d’une variante de l’aramon noir, cépage d’origine espagnole qui a été massivement planté dans le Languedoc au XIXe&nbsp;siècle. Réputé pour sa productivité, ce cépage est parfois surnommé « pisse-vin ». Néanmoins, il est de moins en moins cultivé. Il ne couvrait que quelques hectares en 2018 contre plus de 130 à la fin des années&nbsp;1950.\n\n## Quels vins produit-on avec l’aramon blanc ?\n\nL’aramon blanc est utilisé pour produire des vins de table sans caractère. On le retrouve surtout dans les vins du Languedoc-Roussillon comme le cévennes, le coteaux-du-libron, le côtes-de-thau ou le côtes-de-thongues. Les vins de Provence comme le var, le méditerranée et l’alpes-maritimes peuvent aussi être produits avec de l’aramon blanc.\n\n## Aramon blanc&nbsp;: un cépage aux grandes grappes\n\nLe cépage aramon blanc présente les mêmes caractéristiques que l’aramon noir, à l’exception de la couleur de ses baies, qui sont vert doré. Les grappes sont tronconiques et de grande taille, avec des baies rondes pouvant atteindre 2&nbsp;cm de diamètre. Les feuilles adultes sont dentelées, à trois lobes, avec un limbe pas ou peu duveteux. Le jeune rameau est en revanche couvert de duvet à l’extrémité et les jeunes feuilles bosselées, aranéeuses, à petites bosses bronzées.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `2CD1D425-5592-461B-B85E-37908CAE555C` = DefaultGrapeVariety(
        id: UUID(uuidString: "2CD1D425-5592-461B-B85E-37908CAE555C")!,
        name: "Aramon",
        description: """
        ## Un cépage&nbsp;cultivé dans le sud de la France\n\nL’aramon blanc est un cépage français que l’on cultive essentiellement dans le vignoble du Languedoc-Roussillon. Il s’agit d’une variante de l’aramon noir, cépage d’origine espagnole qui a été massivement planté dans le Languedoc au XIXe&nbsp;siècle. Réputé pour sa productivité, ce cépage est parfois surnommé « pisse-vin ». Néanmoins, il est de moins en moins cultivé. Il ne couvrait que quelques hectares en 2018 contre plus de 130 à la fin des années&nbsp;1950.\n\n## Quels vins produit-on avec l’aramon blanc ?\n\nL’aramon blanc est utilisé pour produire des vins de table sans caractère. On le retrouve surtout dans les vins du Languedoc-Roussillon comme le cévennes, le coteaux-du-libron, le côtes-de-thau ou le côtes-de-thongues. Les vins de Provence comme le var, le méditerranée et l’alpes-maritimes peuvent aussi être produits avec de l’aramon blanc.\n\n## Aramon blanc&nbsp;: un cépage aux grandes grappes\n\nLe cépage aramon blanc présente les mêmes caractéristiques que l’aramon noir, à l’exception de la couleur de ses baies, qui sont vert doré. Les grappes sont tronconiques et de grande taille, avec des baies rondes pouvant atteindre 2&nbsp;cm de diamètre. Les feuilles adultes sont dentelées, à trois lobes, avec un limbe pas ou peu duveteux. Le jeune rameau est en revanche couvert de duvet à l’extrémité et les jeunes feuilles bosselées, aranéeuses, à petites bosses bronzées.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `B642613B-7ADA-4AD3-9EFA-576F7BCC70FC` = DefaultGrapeVariety(
        id: UUID(uuidString: "B642613B-7ADA-4AD3-9EFA-576F7BCC70FC")!,
        name: "Aramon",
        description: """
        ## D’où vient l’aramon gris ?\n\nL’aramon gris est un cépage originaire de France, cultivé dans le Languedoc et le Roussillon. Il s’agit d’une variété de l’aramon noir, qui a aussi donné l’aramon blanc. Aujourd’hui, ce cépage également dénommé Samovenka ou Szuerke aramon ne couvre plus qu’une dizaine d’hectares alors qu’il occupait plus de 1&nbsp;300&nbsp;hectares dans les années&nbsp;1950.\n\n## Quels vins avec l’aramon gris ?\n\nL’aramon gris est un cépage d’assemblage qui sert notamment à la production de vins blancs. En cépage principal, on le retrouve dans le périgord blanc et l’atlantique blanc produits dans le vignoble bordelais. Il est aussi utilisé dans de nombreux vins du Languedoc-Roussillon&nbsp;: coteaux-du-libron, côtes-de-thau, côtes-du-brian ou encore coteaux-du-pont-du-gard. Il est réputé pour sa productivité&nbsp;: jusqu’à 250&nbsp;hl/ha dans les bonnes terres de plaine. Lorsqu’il est vinifié comme du blanc et du rosé, l’aramon gris permet d’obtenir un gris de gris.\n\n## Les caractéristiques de l’aramon gris\n\nLe cépage aramon gris est reconnaissable à ses grappes de grande taille et ses grosses baies pouvant atteindre 2&nbsp;cm de diamètre. Celles-ci sont grises à maturité, se démarquant ainsi des cépages aramon noir et blanc. Le jeune rameau a une extrémité duveteuse, les jeunes feuilles sont aréneuses et présentent des bosselures dorées. Les feuilles adultes sont dentelées, à trois lobes, et à limbe sans duvet, voire à poils fins et espacés.
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `1729215B-CBF6-4CEC-901C-66FB7C067817` = DefaultGrapeVariety(
        id: UUID(uuidString: "1729215B-CBF6-4CEC-901C-66FB7C067817")!,
        name: "Calitor",
        description: """
        Cépage noir d’origine provençale en voie de disparition, recommandé dans les départements du Vaucluse et du Var et autorisé dans le Gard, la Drôme, l’Hérault, l’Ardèche et les Pyrénées orientales. Il fait partie de l'encépagement des appellations côtes-de-provence et tavel. Très productif, il produit un vin léger, peu alcoolique et peu coloré. Existe aussi en blanc et en gris.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `7B29A1F1-0BD2-47A6-A87C-D200871D3801` = DefaultGrapeVariety(
        id: UUID(uuidString: "7B29A1F1-0BD2-47A6-A87C-D200871D3801")!,
        name: "Camaralet",
        description: """
        Cépage blanc originaire du Béarn, variété accessoire et rare de l'appellation jurançon. Il donne un vin fin aux arômes épicés (poivre ou cannelle).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `23D852B6-EBD3-4E9F-BD3D-001399FB0BB4` = DefaultGrapeVariety(
        id: UUID(uuidString: "23D852B6-EBD3-4E9F-BD3D-001399FB0BB4")!,
        name: "Aubin",
        description: """
        ## Aux origines de l’aubin&nbsp;: direction le nord-est de la France\n\nÉgalement connu sous les noms d’aubin blanc, d’aubain ou encore de blanc de Creuse (dans le département de la Meuse), ce cépage est principalement cultivé dans la vallée de la Moselle, dans des sols contenant du calcaire, de l’argile et des alluvions. Plus précisément, il pousse sur les communes de Buligny, Rozérieulles ou encore Bruley. Certaines plantations sont aussi&nbsp;recensées au Canada&nbsp;!## Dans quelle AOC retrouve-t-on l’aubin&nbsp;?\n\nL’aubin est une variété de cépage qui provient du croisement spontané entre le gouais (famille des Gouais) et le savagnin (famille des Traminers). On retrouve l’aubin dans les vins blancs et les vins rosés du côtes-de-toul, un vin français qui possède une appellation d’origine contrôlée (AOC). À noter que ce cépage est minoritaire dans l’assemblage de ces vins.\n\n## Quelles sont les spécificités de l’aubin&nbsp;?\n\nLes grappes de raisin de l'aubin sont petites à moyennes et assez compactes. Elles sont de couleur blanc-vert puis la couleur verte s’intensifie lorsque les grappes sont à maturité. Côté goût, la chair est juteuse et peu sucrée. Enfin, l’aubin est peu vigoureux, mais n’est pas sensible aux maladies comme le mildiou ou la pourriture grise. Ce cépage est peu alcoolique et les vins dans lesquels il est présent sont de couleur assez pâle.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `1CC10FED-ACEF-4462-90D8-C39E03BBF03B` = DefaultGrapeVariety(
        id: UUID(uuidString: "1CC10FED-ACEF-4462-90D8-C39E03BBF03B")!,
        name: "Aubun",
        description: """
        ## Où l’aubun est-il cultivé&nbsp;?\n\nL’aubun est également connu sous le nom de moustardier (ou moutardier), de morescola (en Corse) ou encore de carignan de Gigondas. C’est un cépage français de raisins noirs qui serait originaire du Vaucluse, mais qui est aussi présent dans le Var, le Lot-et-Garonne, l’Aveyron ou encore l’Ardèche. Il s’est exporté puisque la Californie et l’Australie comptent aussi des plantations&nbsp;! En France, sa production s’est considérablement réduite, passant de plus de 5&nbsp;400&nbsp;hectares à la fin des années&nbsp;1990 à environ 1&nbsp;400&nbsp;hectares en 2004.\n\n## Des vins alcooliques et rosés\n\nL’aubun est un cépage vigoureux qui résiste plutôt bien au mildiou, à la pourriture grise et aux gelées d’hiver. Le vin qu’il produit est peu coloré (couleur saumon) et assez alcoolique. Les vins rosés produits avec de l’aubun délivrent des notes de fruits des bois et sont à boire jeunes.\n\n## L’aubun, un cépage résistant et assez alcoolique\n\nL’aubun est reconnaissable grâce à ses grappes de moyenne à grande taille. Quand elles sont jeunes, ses feuilles sont duveteuses et de couleur jaunâtre. À maturité, elles sont dotées de cinq à sept lobes et possèdent un sinus latéral large et concave. Quant à ses baies, elles sont de couleur noire, charnues et peu juteuses. À noter que la maturité de l’aubun intervient 25&nbsp;jours après celle du chasselas, un cépage blanc d’origine suisse.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `CA8E6B45-2370-4EC1-B1DB-9673F93FCC48` = DefaultGrapeVariety(
        id: UUID(uuidString: "CA8E6B45-2370-4EC1-B1DB-9673F93FCC48")!,
        name: "Auxerrois",
        description: """
        ## Un cépage lorrain\n\nL’auxerrois appartient à l’encépagement des AOC d’Alsace, de Moselle et des Côtes-de-Toul, au sud de la vallée de la Moselle. Né en Lorraine au XXe&nbsp;siècle, ce cépage est également connu en Val de Loire, où il s’est répandu dans les années&nbsp;1950. Son appellation est cependant associée à la région d’Auxerre, dans l’Yonne, où il a trouvé refuge pendant l’occupation allemande de 1939-45.\n\n## Pourquoi associe-t-on l’auxerrois au pinot blanc&nbsp;?\n\nEn réalité, le nom «&nbsp;auxerrois&nbsp;» apparaît rarement sur les étiquettes. Les amateurs de vin alsacien retiennent surtout son générique, pinot blanc, dont il partage souvent les assemblages, par exemple pour le crémant d’Alsace. Les grappes de l’auxerrois sont néanmoins reconnaissables à leur aspect compact et à leurs petites baies. Ce raisin est relativement tardif, les bourgeons n’apparaissent qu’à une température supérieure à 10&nbsp;°C.&nbsp;## Comment apprécier l’auxerrois en bouche&nbsp;?\n\nEn France, la production d’auxerrois représente environ 1&nbsp;600&nbsp;hectares. On trouve aussi quelques petites parcelles de ce cépage au Luxembourg, en Allemagne, au Canada et en Afrique du Sud, dans les zones septentrionales et les terroirs calcaires. Les connaisseurs sélectionnent ce vin pour son acidité mesurée et ses arômes quelque peu exotiques. En bouche, l’auxerrois, également connu sous les noms d’auxerrois de Laquenexy ou blanc de Kienzheil, exprime un caractère rond, doux quoique légèrement épicé. Ce vin est donc parfait à l’apéritif ou pour accompagner des plats sucrés-salés.
        """,
        color: .white,
        synonyms: [
            "Pinot Auxerrois"
        ]
    )

    static let `0479EB21-3D46-4860-91D2-4E025F1102B0` = DefaultGrapeVariety(
        id: UUID(uuidString: "0479EB21-3D46-4860-91D2-4E025F1102B0")!,
        name: "Carignan",
        description: """
        ## Le carignan blanc, une mutation du carignan peu connue\n\nLe carignan blanc est une mutation du carignan gris, un cépage originaire d'Aragon, probablement arrivé en France durant le Moyen-Âge. Tout comme le carignan noir, le cépage blanc a connu son apogée de culture dans les années&nbsp;1960 et 1970, même si elle est restée confidentielle, avec environ 2&nbsp;300&nbsp;hectares en 1979. C'est aujourd'hui un cépage assez peu cultivé en France et dans le monde, avec environ 3&nbsp;000&nbsp;hectares, principalement en Espagne.\n\n## Un cépage intéressant pour les assemblages\n\nLe carignan blanc se démarque par de grosses grappes et des baies de couleur vert-jaune qui arrivent à maturité tardivement. C'est un cépage très fertile, utilisé notamment en assemblage pour les vins faugères, saint-chinian et languedoc, quasi exclusivement dans des vignobles du Languedoc. Il est aussi utilisé pour l'élaboration de vins rosés dans le vignoble de Tavel et pour des vins doux à Banyuls. Sa participation dans l'assemblage reste toutefois limitée à 10&nbsp;%.\n\n## Le carignan blanc, pour un vin blanc minéral\n\nLe carignan blanc est un cépage offrant des caractéristiques intéressantes, en apportant un côté très frais et minéral aux vins blancs auxquels il est associé. Offrant un vin assez peu alcoolique, avec des arômes intéressants de fruits jaunes, de vanille ou encore de fleurs blanches, le carignan blanc, ou le&nbsp;carignane comme on l'appelle en Californie,&nbsp;fait partie de l'AOC saint-chinian avec un rendement ne pouvant dépasser 45&nbsp;hectolitres par hectare.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `28520607-8AE5-42F9-893A-AC2C8F2E7F3D` = DefaultGrapeVariety(
        id: UUID(uuidString: "28520607-8AE5-42F9-893A-AC2C8F2E7F3D")!,
        name: "Baroque",
        description: """
        ## Le baroque&nbsp;: un cépage qui se fait rare\n\nLe baroque, autrement appelé blanc bordelais, escripet ou encore sable blanc, est un cépage qui est apparu en France peu après l'épidémie d'oïdium de la vigne qui ravagea les vignobles européens en 1845. Jusqu'en 1968,&nbsp;près de 5&nbsp;000&nbsp;hectares de&nbsp;cette variété de raisin de cuve étaient cultivés. En 2018, seuls 56&nbsp;hectares étaient encore en culture, dans le Sud-Ouest.\n\n## Tursan et Floc-de-Gascogne, les deux appellations qui l'utilisent\n\nL'appellation d'origine Tursan date de 1958 et s'étend sur 36&nbsp;communes des Landes et du Gers. Le cahier des charges de l'AOC&nbsp;en 2016 précise que les blancs sont majoritairement élaborés à partir des cépages de baroque B et de gros manseng B. Le Tursan blanc, qui ne doit pas dépasser un rendement de 68&nbsp;hectolitres/ha, est l'appellation qui utilise le plus&nbsp;le baroque. Dans ce terroir, l'encépagement en baroque peut atteindre les 90&nbsp;%. Ce&nbsp;cépage entre aussi&nbsp;dans la fabrication de l'appellation vin de liqueur blanc Floc-de-Gascogne. Dans ce cas, le baroque B vient en assemblage pour un vin de liqueur qui se fait par mutage du moût de raisin par de l'eau-de-vie d'AOC Armagnac.\n\n## Un cépage vigoureux qui donne des vins fins et fruités\n\nIdentifiable&nbsp;à ses feuilles jaunes,&nbsp;le baroque produit&nbsp;des grappes compactes et moyennes aux baies arrondies et rosées. Ce cépage, robuste et productif, se fait rare au gré&nbsp;des acteurs du vin français qui lui reconnaissent un potentiel qualitatif intéressant. Il donne des vins typiques réservés aux fins connaisseurs.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `4B43CABA-0C71-456D-B2DA-A581A14B7CD1` = DefaultGrapeVariety(
        id: UUID(uuidString: "4B43CABA-0C71-456D-B2DA-A581A14B7CD1")!,
        name: "Baco",
        description: """
        ## Un cépage hybride des coteaux de l’Armagnac\n\nLe baco blanc est un cépage hybride, originaire des Landes. Il est mis au point en 1898 par un instituteur, François Baco, pour relancer le vignoble après la crise du phylloxera. Ce raisin est issu du croisement de la folle blanche, utilisée pour la production de l’Armagnac, et du noah, un cépage américain géniteur d’«&nbsp;hybrideurs&nbsp;».\n\n## Un raisin utilisé pour les eaux-de-vie de qualité\n\nLe baco blanc est parfois appelé maurice-baco, du nom du fils de son créateur, ou baco 22A, de la position du cépage dans son vignoble originel. Bien que productif, ce raisin est peu résistant et sensible au vent et aux maladies, notamment le phylloxera. Les connaisseurs assurent que le baco blanc exprime des arômes proches de la «&nbsp;fraise sauvage compotée&nbsp;». Doté d’une bonne acidité et d’un bon degré d’alcool, il est essentiellement exploité en distillation pour les eaux-de-vie de qualité, dont l’Armagnac.\n\n## Un cépage à la maturité tardive\n\nConcentré dans la région des sables fauves de l’Armagnac, le baco blanc apprécie les terrains argilocalcaires. Ce raisin se caractérise par ses jeunes rameaux qui présentent une forte densité de poils. Adultes, ses feuilles se développent et peuvent compter jusqu’à six lobes. Ses baies sont fournies et de forme sphérique. Sa maturité est tardive, à titre de comparaison&nbsp;3 à 4&nbsp;semaines après celle du chasselas.&nbsp;
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `576A144B-D9A4-4BD2-83BE-D0E012E0B7B9` = DefaultGrapeVariety(
        id: UUID(uuidString: "576A144B-D9A4-4BD2-83BE-D0E012E0B7B9")!,
        name: "Carmenère",
        description: """
        ## Carménère&nbsp;: les origines de ce cépage noir\n\nD'origine bordelaise, le carménère est issu d'un mariage entre le gros cabernet et le cabernet franc. Ce cépage noir est peu cultivé en France, puisqu'il ne recouvre qu'une dizaine d'hectares dans tout le pays. En revanche, il est très prisé en Amérique du Sud et on le retrouve aussi en grande quantité en Italie et en Californie. Le cépage carménère est souvent surnommé vidure, car il possède un bois relativement dur.\n\n## Dans quelles AOC retrouve-t-on le carménère ?\n\nLe carménère atteint sa pleine maturité à la deuxième époque moyenne. Il produit un vin coloré avec des reflets violacés, tanique. Quand il est jeune, il se distingue avec des arômes de betterave, de framboise, de paprika, de poivre vert, de cacao et de prune noire. Le carménère fait partie de l'encépagement des appellations graves-de-vayres, margaux, pauillac, saint-émilion, ou encore crémant de Bordeaux.\n\n## Quelles sont les particularités du carménère ?\n\nLe cépage carménère est facilement reconnaissable à ses feuilles à la fois révolutées et brillantes. Les grappes sont petites à moyennes, de forme arrondie, avec des pédoncules assez forts et longs. De couleur noire bleutée, la peau des grains est couverte de pruine. Quant à la pulpe, elle est plutôt molle, avec un goût herbacé. Le carménère nécessite un débourrement tardif et supporte difficilement le froid comme les zones trop fertiles. Il est peu sensible aux maladies (sauf la pourriture grise).
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC` = DefaultGrapeVariety(
        id: UUID(uuidString: "682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC")!,
        name: "Carignan",
        description: """
        ## L'origine aragonaise du carignan\n\nLe carignan noir trouve ses origines en Espagne, de la ville de Cariñena dans la province de Saragosse. Selon certaines sources, il serait arrivé en France au Moyen-Âge, grâce à des pèlerins de retour de Saint-Jacques-de-Compostelle. Sélectionné pour son fort rendement au début du XXe&nbsp;siècle en France, puis décrié pour sa seule productivité et sa piètre qualité, le cépage couvrait plus de 200&nbsp;000&nbsp;hectares à la fin des années&nbsp;1960. Le carignan est également connu sous de nombreux noms tels que le bois dur, le babonenc, le calignan ou encore le monestel.\n\n## Un nouvel essor avec les AOC\n\nLa vinification du carignan noir par macération carbonique relance l'intérêt pour ce cépage dans les années&nbsp;1980, et il accède alors à plusieurs AOC, comme dans le Minervois ou les Corbières. Il reste aujourd'hui principalement cultivé en Languedoc-Roussillon et en Provence, appréciant les coteaux arides et peu fertiles, où il est utilisé en partie pour la production de vin rosé.\n\n## Le carignan, un vin riche en tanins\n\nLes caractéristiques principales du carignan noir sont de donner un vin de terroir riche en tanins et puissant. Toutefois, sa redécouverte il y a plusieurs décennies a permis de lui redonner ses lettres de noblesse, notamment en assemblage. Le carignan se marie en effet à merveille au grenache, à la syrah ou au cinsault, et il offre, lorsque cultivé en coteaux et bien vinifié, des vins généreux, colorés, avec une belle acidité.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `43487DD0-B24D-4C0F-B887-8273F593E162` = DefaultGrapeVariety(
        id: UUID(uuidString: "43487DD0-B24D-4C0F-B887-8273F593E162")!,
        name: "Brachet",
        description: """
        ## Origine du cépage brachet\n\nLe brachet est un vieux cépage cultivé dans les départements du Var et des Alpes-Maritimes. C’est d’ailleurs sur les hauteurs de Nice que ce cépage continue d’être produit et nulle part ailleurs en France. Ce nom officiel fait l’objet d’une autorisation comme raisin de cuve, mais on le retrouve également sous le nom de braquet ou de bracelet. Il ne faut toutefois pas le confondre avec le cépage bachet issu de l’Aube ou avec le cépage brachetto issu d’Italie.\n\n## Cépage brachet&nbsp;: une utilisation unique\n\nLe cépage brachet intègre l’encépagement de l’appellation AOC bellet qu’il domine en rouge et blanc. Les anciennes étiquettes faisaient auparavant apparaître la nomination Braquet-Bellet, signe de l’importance de ce cépage dans cette appellation. Pour la production du vin rouge, les viticulteurs ajoutent aux raisins brachet les cépages fuella nera cinsault et grenache noir. Les vins issus de ce cépage gagnent à vieillir et brillent par leur finesse. Le potentiel de garde est estimé entre 10 et 15&nbsp;ans.\n\n## Quelques particularités pour ce cépage rare\n\nConnu pour sa sensibilité à la pourriture grise, le rendement du brachet demeure assez variable. Le bourgeonnement de ces vignes est assez précoce ce qui peut menacer son développement à cause de gelées tardives. Mais le brachet se plait davantage dans les régions chaudes et sèches ainsi que dans des sols peu fertiles.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `F1BF0A23-2A8C-411F-92C7-265BF52F982B` = DefaultGrapeVariety(
        id: UUID(uuidString: "F1BF0A23-2A8C-411F-92C7-265BF52F982B")!,
        name: "Bouillet",
        description: """
        ## Le bouillet noir&nbsp;: un cépage du Sud en voie de disparition\n\nLe bouillet noir est un cépage ancien, originaire du Sud-Ouest, plus particulièrement de la région de la Dordogne. Très fertile, il est&nbsp;toutefois de moins en moins prisé par les vignerons qui le cultivent même s'il peut encore être utilisé dans de nombreuses IGP. La surface cultivée de bouillet noir est passée de 180&nbsp;hectares en 1958 à&nbsp;0,6&nbsp;hectare en 2018.\n\n## Un cépage des vins tranquilles\n\nLe bouillet noir, également dénommé fouine ou encore quillard, n'est pas un raisin de table. Il est réservé à la cuve et est autorisé pour l'assemblage dans un grand nombre d'IGP&nbsp;du sud de la France, principalement des Alpes-Maritimes, du Var, du Vaucluse et du Gers. Il peut être utilisé en tant que cépage principal dans les vins rouges et rosés de six IGP du Périgord et de l'Atlantique. L'ensemble de ces IGP créent des vins tranquilles (à moins de 15&nbsp;% d'alcool, selon la réglementation), en blanc, rouge et rosé.\n\n## Un cépage facilement identifiable\n\nSes feuilles vertes sont de taille moyenne et à trois lobes alors que les grappes et les baies sont grandes. Inscrit sur le catalogue variétal, ce cépage n'a pas de clone autorisé. Le bouillet a la réputation de&nbsp;donner des vins de moindre qualité auxquels il confère de l'amertume et une certaine touche d'acidité ; c'est pourquoi il doit être utilisé avec parcimonie, plutôt en assemblage avec d'autres cépages, même dans les IGP où il pourrait être utilisé en tant que cépage principal.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `93ECBE53-1BDF-43EC-B0F7-A16DC38541B9` = DefaultGrapeVariety(
        id: UUID(uuidString: "93ECBE53-1BDF-43EC-B0F7-A16DC38541B9")!,
        name: "Cabernet Franc",
        description: """
        ## Cabernet franc&nbsp;: un cépage venu d’Espagne\n\nIssu de la famille des Carmenets, le cabernet franc était cultivé dans les Pyrénées côté espagnol. Les pèlerins revenant de Saint-Jacques-de-Compostelle auraient ramené ce cépage en France. Il s’étend aujourd’hui dans l’ouest du territoire national, notamment en Aquitaine, région dans laquelle est cultivée plus de la moitié du vignoble français en cabernet franc. Ce cépage est planté sur 36&nbsp;000&nbsp;hectares en France et 9&nbsp;000&nbsp;hectares hors du pays, dont 5&nbsp;700 en Italie.\n\n## Les AOC intégrant le cabernet franc\n\nLe fameux Château Cheval Blanc réputé pour son AOC saint-émilion grand cru est dominé par le cabernet franc à hauteur de 60&nbsp;%, ce qui constitue une exception dans le paysage viticole girondin. Il est surtout utilisé dans les vins du Val de Loire. Il participe grandement à l’encépagement des vins AOC bourgueil avec le cabernet-sauvignon. Idem pour le célèbre vin rouge AOC chinon. On retrouve également cette association dans les vins du Médoc de la région de Bordeaux.\n\n## Les particularités du cabernet franc\n\nLe cabernet franc, également connu sous de nombreux noms tels que le véron, le véronais, le carmenet ou encore le boubet, est un cépage qui génère un vieillissement du vin assez rapide. Cela s’explique par sa faible teneur en tanins. On remarque aussi une grande finesse aromatique. Ses arômes offrent des notes d’épices voire de poivron. Quant à ses parfums, certains y reconnaissent la framboise ou la violette en fonction des vins issus de ce cépage.
        """,
        color: .black,
        synonyms: [
            "Breton", "Bouchy"
        ]
    )

    static let `DCEA1DCF-1409-4F96-A812-772EF15CB765` = DefaultGrapeVariety(
        id: UUID(uuidString: "DCEA1DCF-1409-4F96-A812-772EF15CB765")!,
        name: "Cabernet-Sauvignon",
        description: """
        ## Le roi du Sud-Ouest\n\nIl unit les cépages&nbsp;cabernet et sauvignon depuis le XVIIe&nbsp;siècle. Mentionné sous Montesquieu pour sa qualité,&nbsp;le cabernet-sauvignon cépage noir apprécie les terres du Bordelais. Sa zone de prédilection est le Médoc, mais on le trouve aussi en Languedoc-Roussillon et dans la Loire. La France reste sa terre d'élection même s'il est aujourd'hui cultivé dans la vallée de Napa en Californie, en Italie, en Espagne, en Australie, au Chili et même en Chine. Aussi appelé carmenet, bouchet ou encore sauvignonne, il est l'un des cépages les plus populaires au monde.\n\n## Seul ou assemblé\n\nSes grains à la peau épaisse et au jus dense aiment le soleil et les sols aux sédiments volcaniques et marins. Les vins sont taniques et soyeux. Les arômes dominants évoquent la cannelle, la réglisse, le chocolat, le cassis, le cèdre et même le cuir. Dans le Bordelais, il fait la réputation de Saint-Julien, Saint-Estèphe ou Margaux. Dans d'autres régions de France, la force de ce cépage le conduit à être assemblé pour produire un résultat moins franc en bouche. C'est le cas avec les côtes-de-provence, les chinons et les cabernet-d'anjou.\n\n## Un cépage lent, mais excellent\n\nL'une de ses spécificités est de mûrir assez tard. Il est donc essentiel de se méfier des automnes humides et précoces. Son autre point faible est l'oïdium. Le rendement reste assez faible, car les vins sont assez lents à développer tout leur potentiel. Toutefois, l'excellente qualité finalement produite compense très largement ce léger désavantage.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `C51D3E45-6032-48B3-A12D-7F5CF55DB57C` = DefaultGrapeVariety(
        id: UUID(uuidString: "C51D3E45-6032-48B3-A12D-7F5CF55DB57C")!,
        name: "Cardinal",
        description: """
        ## Un cépage&nbsp;né chez&nbsp;l'Oncle Sam\n\nCe cépage américain a vu le jour dans les années&nbsp;1930. Il est produit par Elmer Snyder et Frank Harmon. Certaines sources indiquent qu'il est issu d'un croisement entre le flame pinot gris et l'alphonse-lavallée, un cépage noir français de raisin de table. D'autres évoquent l'alliance de la reine des vignes&nbsp;et de l'alphonse-lavallée. Une chose est sûre&nbsp;: son apparition en France remonte à 1940. Aujourd'hui, il est présent dans le Bugey, en vallée du Rhône, en Languedoc-Roussillon, en Provence et en Corse. En Europe de l'Est, il s'appelle le kardinal. On le retrouve également sous les noms d'Apostoliatiko ou encore de Rannii Carabournu.&nbsp;## Un raisin généreux facile à cuisiner\n\nLe rendement d'un cep de cardinal rouge est excellent. Il peut atteindre 3&nbsp;kilos. Avec ses belles grappes généreuses en forme de cônes et ses gros grains à chair ferme, le cardinal rouge fait le bonheur des amateurs en tant que raisin de table. Naturellement sucré, il est parfait en salade ou dans un gâteau.\n\n## Rondeur et légèreté\n\nLe cardinal entre dans la composition des vins rouges d'Ardèche, des Cévennes, de Thau ou du Gard. Il aime les sols qui ne se dessèchent pas trop en été et apprécie la paille qui protège les ceps du froid au cœur de l'hiver. Il&nbsp;faut aussi le&nbsp;prémunir contre&nbsp;les maladies classiques comme le mildiou ou l'oïdium. Faiblement acide, il offre les arômes légers caractéristiques de l'alphonse-lavallée et les notes de fruits secs du pinot gris.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `13A6755E-8D57-4004-AD17-C063B427CF22` = DefaultGrapeVariety(
        id: UUID(uuidString: "13A6755E-8D57-4004-AD17-C063B427CF22")!,
        name: "Castets",
        description: """
        ## Les origines du cépage castets\n\nLe castets est aujourd'hui très peu cultivé sur le territoire français. Ce cépage du Sud-Ouest serait issu d'un mariage réussi entre le gros cabernet et le camaraou noir. Le castets est également appelé nicouleau, machouquet, engrunat ou encore gros verdau.\n\n## Quel type de vin produit ce cépage ?\n\nLe castets est moyennement fertile et fait partie du même groupe d'encépagement que les appellations vins d'Estaing et palette. Le vin issu de ce cépage noir est de couleur violet foncé, avec un agréable taux d'acidité. Il bénéficie également d'une teneur idéale en anthocyanes. C'est un vin de vieillissement très apprécié qui dévoile avec le temps des arômes de fruits noirs et d'épices, ainsi que des notes chocolatées et balsamiques. Le vin issu du castets est aussi moyennement riche en alcool.\n\n## Quelles sont les particularités du cépage castets ?\n\nLe castets nécessite un débourrement très tardif (14&nbsp;jours après le chasselas) et atteint sa maturité à la deuxième époque moyenne. Il se reconnaît facilement à son port vigoureux et à ses grappes moyennes à grandes. Il possède également des jeunes feuilles orangées et des feuilles adultes au limbe bullé, avec un sinus pétiolaire ouvert en V. Les baies du castets sont plutôt de petite taille, avec une saveur herbacée et une forme arrondie. Ce cépage est peu sensible au mildiou, mais plus fréquemment atteint par l'oïdium et la pourriture grise.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `2DBD71D4-0242-4484-BF17-5515FFB9F92C` = DefaultGrapeVariety(
        id: UUID(uuidString: "2DBD71D4-0242-4484-BF17-5515FFB9F92C")!,
        name: "Chasselas",
        description: """
        ## Un cépage ancien\n\nLe chasselas est un cépage aux origines anciennes dont la culture s'est rapidement étendue dans le monde entier. Appelé officiellement en France chasselas doré B, on le retrouve sous d'autres appellations en Europe (Bela zlahtnina en Slovénie ou&nbsp;Weisser Gutedel en Allemagne, pour n'en citer que quelques-unes). Certains pensaient qu'il&nbsp;provenait de Bourgogne, mais une étude génétique récente&nbsp;montre&nbsp;que le chasselas B est originaire&nbsp;de Suisse. Sujet aux mutations, il est apparenté à d'autres appellations de chasselas, comme le chasselas de Moissac, celui de Thomery et de Fontainebleau ou encore le chasselas rose.\n\n## Mais de moins en moins cultivé\n\nEn 1958, pas moins de 24&nbsp;000&nbsp;hectares de chasselas B étaient en culture, mais,&nbsp;depuis 1998,&nbsp;on observe un net infléchissement en France. Son utilisation pour la vinification est aussi en net recul&nbsp;: en 2013, 10&nbsp;% de la production était destinée à la cuve, le reste finissait en raisin de table. Pourtant, de nombreuses IGP de Savoie, du Rhône, du Languedoc, de Provence ou encore du Beaujolais l'utilisent en assemblage. En cépage principal, pas moins de huit AOC en blanc le privilégient, en particulier l'alsace blanc chasselas ou le pouilly-sur-loire.&nbsp;## Un cépage qui laisse le terroir s'exprimer\n\nLa baie du chasselas blanc a une chair juteuse et une pellicule fine, c'est pourquoi elle est très appréciée à table. Trop neutre pour certains spécialistes du vin, ce cépage discret est reconnu pour mettre en valeur le terroir sur lequel il est cultivé.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `713969D3-74BE-416B-B518-83603F0C9FE0` = DefaultGrapeVariety(
        id: UUID(uuidString: "713969D3-74BE-416B-B518-83603F0C9FE0")!,
        name: "Clarin",
        description: """
        ## Un cépage issu d'un croisement récent\n\nLe clarin blanc a une origine identifiable&nbsp;: c'est un cépage créé en 1953 par le chercheur Paul&nbsp;Truel au sein du Centre de ressources biologiques de la vigne à Montpellier (domaine de Vassal), dont il a été directeur par la suite. Cet ampélographe (qui étudie la morphologie des vignes) est à l'origine de nombreuses variétés de cépages. Le clarin est obtenu à partir d'un croisement entre le carignan et le cinsault. Ce cépage est bien inscrit au catalogue des variétés de vigne en France et aucun synonyme ne lui est connu.\n\n## Un cépage confidentiel\n\nLe clarin n'a jamais eu vocation à être cultivé à grande échelle. Depuis 1958, les surfaces de production du clarin n'ont jamais dépassé les huit hectares. Il se joint à la liste des cépages utilisés dans la plaine languedocienne et la vallée méridionale du Rhône, surtout en vinification des vins blancs. Aucune AOC ne peut utiliser ce cépage. Il se retrouve en revanche comme cépage autorisé en assemblage dans de nombreuses IGP du Languedoc, du Rhône et de Provence ou encore du Périgord.&nbsp;## Une variété fertile\n\nSi ce cépage est peu mis en culture, ce n'est probablement pas à cause de ses propriétés de cultures déficientes. C'est un cépage fertile et productif, peu sensible aux maladies comme la pourriture grise. Ses baies sont grosses, tout comme ses grappes, et ont une forme elliptique. Ce cépage est reconnaissable à ses feuilles jeunes qui se colorent en jaune et à ses feuilles adultes de grande taille, de 7 à 9&nbsp;lobes.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `6F830C77-D562-4365-AD92-BE4249663054` = DefaultGrapeVariety(
        id: UUID(uuidString: "6F830C77-D562-4365-AD92-BE4249663054")!,
        name: "César",
        description: """
        ## Les origines du césar noir\n\nLe césar noir est un cépage originaire de Bourgogne. Spécialement destiné à l'élaboration du vin, c'est un cépage très ancien qui existait certainement déjà à l'époque romaine. On le rencontre très peu en France ; il en reste seulement quelques hectares dans le vignoble d'Irancy. Le césar est issu d'un mariage entre l'argant et le pinot noir.\n\n## Dans quels vins peut-on retrouver le césar noir ?\n\nLe césar arrive à maturité à la deuxième époque moyenne. Il produit un vin très coloré et tanique. C'est un vin qui doit vieillir en cave pendant plusieurs années avant de dévoiler tous ses arômes de cerises et de fruits rouges. Le césar est utilisé en tant que cépage principal dans les coteaux de l'Auxois, les coteaux bourguignons, le Périgord, l'Yonne rouge ou encore la Saône-et-Loire&nbsp;: ce sont uniquement des vignobles de Bourgogne et de Bordeaux.\n\n## Quelles sont les particularités de cet ancien cépage ?\n\nLe césar nécessite un débourrement précoce et il est sensible aux premières gelées printanières. Il craint également les attaques du mildiou et de l'oïdium. Ses jeunes rameaux sont assez fragiles et risquent parfois de casser face à un vent trop fort. Ce cépage noir produit des grappes de raisins moyennes à grandes, de forme cylindrique. La peau des grains est assez épaisse, d'une couleur noire bleutée, et la chair est très pulpeuse. Mais ce n'est pas un raisin de table.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `3373BE45-2B07-46E0-9C74-BD72BFE52709` = DefaultGrapeVariety(
        id: UUID(uuidString: "3373BE45-2B07-46E0-9C74-BD72BFE52709")!,
        name: "Chasselas",
        description: """
        ## Un chasselas d'origine française\n\nAlors que le chasselas B&nbsp;est originaire de Suisse, le chasselas rose est, quant à lui, une variété française. Ses nombreuses dénominations européennes sont reconnues en France,&nbsp;et plus particulièrement son nom allemand Gutedel, qui est utilisé dans&nbsp;la dénomination d'usage des vins blancs en AOC d'Alsace.\n\n## Une mise en culture rare\n\nLe chasselas rose n'a pas connu le même succès que le blanc. Les mises en culture ont rarement dépassé les 100&nbsp;hectares (maximum atteint en 2008 avec 94&nbsp;hectares). En 1968, la culture de ce cépage&nbsp;avait atteint son niveau le plus bas&nbsp;: moins de 20&nbsp;hectares. Le chasselas rose ne se retrouve que dans deux AOC d'Alsace comme cépage principal&nbsp;: le blanc d'Edelzwicker et le blanc chasselas-gutedel, cette dernière appellation étant relativement rare sur le marché. Le reste du temps, il est employé en mélange dans des IGP de Savoie, du Rhône, du Languedoc, de la Provence et du Beaujolais.\n\n## L'apparence du chasselas, mais en rose\n\nCe cépage possède les mêmes&nbsp;aptitudes culturales et agronomiques que son homologue blanc. Il est ainsi sensible à l'oïdium, mais est peu attaqué par la pourriture grise. Il en a aussi les mêmes particularités physiologiques&nbsp;: une baie juteuse, de taille moyenne, mais dont la&nbsp;teinte est légèrement rosée. Il est, comme le chasselas blanc, apprécié en tant que raisin de table. Ce cépage produit des vins secs et légers.&nbsp;
        """,
        color: .pink,
        synonyms: [
            "Fendant", "Gutedel"
        ]
    )

    static let `857FD62A-2C80-4804-950C-C8EAA2FCD689` = DefaultGrapeVariety(
        id: UUID(uuidString: "857FD62A-2C80-4804-950C-C8EAA2FCD689")!,
        name: "Chatus",
        description: """
        ## Un cépage ancien, ancré dans son terroir\n\nOriginaires des Cévennes, les références au Chatus noir datent du 16e&nbsp;siècle. Ce cépage&nbsp;a presque disparu lors de l'épidémie&nbsp;de phylloxera&nbsp;de la fin du XIXe&nbsp;siècle. Il faudra attendre 1997 pour réussir une cuvée&nbsp;entière de ce seul&nbsp;cépage en Ardèche. Depuis quelques années, les deux tiers de la production sont utilisés par la coopérative locale. Tout un symbole !## Mais qui se fait rare !\n\nIl aura fallu soixante ans pour que le nombre d'hectares plantés atteigne de nouveau les 60&nbsp;hectares. Le chatus, également appelé chatelus, houron, charos ou encore corbesse, est actuellement cultivé dans les Cévennes ardéchoises par une trentaine de viticulteurs qui produisent environ 150&nbsp;000&nbsp;bouteilles par an. Il entre comme cépage principal dans huit IGP en rouge ou rosé, Atlantique, Périgord et Puy-de-Dôme. Il est utilisé en assemblage dans une quarantaine d'autres IGP du Sud-Est et du Sud-Ouest.\n\n## Pour des vins de garde\n\nLe chatus est un cépage vigoureux et particulièrement bien adapté aux terroirs pauvres et secs. C'est aussi pourquoi, avant sa quasi-disparition, il a&nbsp;si bien prospéré au sud du Massif central ou dans le Piémont italien. Si son rendement est reconnu depuis longtemps, il exige plus de travail que d'autres cépages. Il est apprécié pour sa coloration foncée et ses tanins. Il apporte une puissance tanique et une acidité qui méritent&nbsp;de reposer quelques années avant la dégustation.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `A7612465-554A-4C3E-AD99-CD3EC9B807A6` = DefaultGrapeVariety(
        id: UUID(uuidString: "A7612465-554A-4C3E-AD99-CD3EC9B807A6")!,
        name: "Chardonnay",
        description: """
        ## Chardonnay&nbsp;: quelles sont les origines de ce cépage blanc ?\n\nÉgalement appelé morillon blanc, beaunois, aubaine, auvernat ou encore gamay blanc, le chardonnay est très présent en Bourgogne et en Champagne. Issu d'un mariage entre le pinot et le gouais, c'est un cépage très répandu qui est cultivé dans le monde entier.\n\n## Quels sont les trois grands types de chardonnay ?\n\nLe chardonnay appartient à l'encépagement de la majorité des appellations blanches de la Bourgogne, de la Touraine, du champagne ou encore des vins du Haut-Poitou. En Bourgogne, on distingue trois styles de chardonnay majeurs&nbsp;: les vins de la côte de Beaune dévoilent une robe avec des reflets dorés et des arômes de fruits à chair blanche. Quant aux vins du Mâconnais, ils se parent de reflets plus jaunes, avec des notes de vanille et de miel. Les chablis, de leur côté, arborent une robe de couleur or pâle et exhalent des notes d'agrumes.\n\n## Comment reconnaître les vignes de chardonnay ?\n\nLes vignes se parent assez tôt des premiers bourgeons du printemps. Le chardonnay est donc un cépage relativement sensible aux gelées. Il s'orne de feuilles d'un vert soutenu, avec cinq lobes peu marqués. Les grappes sont petites et allongées. Quant à ses grains, ils sont plutôt espacés et aérés, arborant une belle couleur dorée au moment de la véraison. La chair du chardonnay est d'ailleurs bien sucrée, gorgée de soleil.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `3E057C6C-41EA-4EDC-915B-D96CA5C1171E` = DefaultGrapeVariety(
        id: UUID(uuidString: "3E057C6C-41EA-4EDC-915B-D96CA5C1171E")!,
        name: "Chenin",
        description: """
        ## Le chenin et sa région de prédilection\n\nLe chenin est un cépage ancien, associé à sa région d'origine, l'Anjou. Rabelais, qui l'appréciait déjà, le cite dans son roman Gargantua. Bien qu'il ait de nombreux noms d'usage selon la région, comme pinot de la Loire, plant d'Anjou ou encore pinot blanc dans l'Aveyron, seule la dénomination « shanin » est officiellement reconnue en France. Des analyses génétiques montrent que le chenin est un descendant probable du savagnin de l'Arbois, ce qui lui confère un lien de parenté avec le sauvignon.&nbsp;## Un cépage&nbsp;qui se fait discret\n\nCépage très répandu dans le monde, notamment en Afrique du Sud, sa culture en France a pourtant baissé dans les années quatre-vingt pour se stabiliser autour de 10&nbsp;000&nbsp;hectares. Fidèle à sa région d'origine, il entre dans la composition de nombreux vins de Loire et d'Anjou. Une soixantaine d'AOC/AOP l'utilisent comme cépage principal&nbsp;en vin blanc. Comme cépage complémentaire, il entre dans la composition de onze autres AOC. Enfin de nombreuses IGP le privilégient&nbsp;en cépage principal&nbsp;ou accessoire pour des vins rosés, blancs et rouges.&nbsp;## Des vins blancs secs, liquoreux ou effervescents\n\nSelon le terroir, les petites baies de chenin procurent des vins effervescents, secs ou moelleux. D'ailleurs la plupart des&nbsp;AOC de la Loire qui l'utilisent comme cépage principal&nbsp;sont majoritairement des vins moelleux et doux. Pourtant, certains viticulteurs reconnaissent que le potentiel du chenin en vin sec&nbsp;est encore loin d'avoir été exploré.
        """,
        color: .white,
        synonyms: [
            "Chenin Blanc", "Pineau de la Loire"
        ]
    )

    static let `AB78EE05-7DAA-4117-914C-B8E3C2DE6872` = DefaultGrapeVariety(
        id: UUID(uuidString: "AB78EE05-7DAA-4117-914C-B8E3C2DE6872")!,
        name: "Counoise",
        description: """
        Cépage noir figurant parmi les 13 cépages autorisés pour l'appellation châteauneuf-du-pape, mais devenu très rare. Il n'intervient que dans des proportions minimes dans certains assemblages de cette appellation et dans quelques vignobles proches (côtes-du-rhône, gigondas, coteaux-d'aix-en-provence). Il donne des vins à la robe foncée, aux arômes de fruits noirs et d'épices.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `6E682B09-BA9C-48D1-809A-32857EAB5FFC` = DefaultGrapeVariety(
        id: UUID(uuidString: "6E682B09-BA9C-48D1-809A-32857EAB5FFC")!,
        name: "Courbu",
        description: """
        Cépage blanc cultivé essentiellement dans les Pyrénées-Atlantiques, le plus souvent associé au petit manseng et à quelques autres cépages de la même région dans les appellations locales. Il donne un vin élégant, corsé, vieillissant bien.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `E5DD9550-C055-41D4-9FDF-E3AEBA2596EE` = DefaultGrapeVariety(
        id: UUID(uuidString: "E5DD9550-C055-41D4-9FDF-E3AEBA2596EE")!,
        name: "Clairette",
        description: """
        ## Un cépage ancien d'Occitanie\n\nLa clairette est considérée comme l'un des seuls cépages originaires du Languedoc. Ce cépage aurait été importé de Grèce&nbsp;dans les premières colonies grecques de la région d'Agde puis aurait proliféré dans l'Hérault. Aucun synonyme ne lui est officiellement reconnu, mais la clairette est aussi&nbsp;nommée blanquette dans l'Aude, petit blanc, malvoisie, muscade ou encore cotticour. La clairette blanche produit des vins secs. Elle entre&nbsp;enfin dans la production d'eau-de-vie.&nbsp;## Un cépage&nbsp;à l'origine de nombreuses appellations\n\nCe cépage entre dans la composition d'innombrables appellations et IGP du sud de la France et du Rhône en tant que cépage principal ou accessoire. Il donne son nom à&nbsp;des appellations contrôlées. Pas moins de 36&nbsp;dénominations, plus particulièrement dans le Languedoc, mais pas seulement ! Des vins prestigieux, comme les AOC châteauneuf-du-pape en blanc et rouge ou beaumes-de-venise en rouge, peuvent opter pour ce cépage principal. Il reste néanmoins associé à la fabrication de vins liquoreux ou effervescents consommés localement, notamment la clairette de Die (Drôme, vallée du Rhône) ou les différentes clairettes du Languedoc (comme celle d'Adissan ou la blanquette de Limoux).&nbsp;## Un grand cépage en perte de vitesse\n\nLa clairette a perdu 85&nbsp;% de surface cultivée depuis 1958. Sa culture en France se stabilise à l'heure actuelle autour de 2&nbsp;000&nbsp;hectares. Considérée comme un grand cépage, la clairette est particulièrement bien adaptée aux sols peu fertiles et secs, et, fidèle à sa région d'origine, elle a des rameaux qui supportent bien le vent.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9` = DefaultGrapeVariety(
        id: UUID(uuidString: "8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9")!,
        name: "Clairette",
        description: """
        ## Un cépage rare&hellip;\n\nLa clairette Rs, parfois nommée blanquette rose, est le seul clone rosé de la clairette B. Il en conserve les propriétés agronomiques et de culture, mais n'a néanmoins pas suscité le même&nbsp;engouement chez les viticulteurs. Si 427&nbsp;hectares étaient encore cultivés en 1958, il n'y en a plus que 150 en 2018.&nbsp;## &hellip; qui se retrouve dans de nombreuses appellations\n\nElle intervient en tant que cépage principal dans&nbsp;quatre AOC du Rhône (châteauneuf-du-pape en blanc et rouge, beaumes-de-venise en rouge, tavel en rosé) et une AOC de Provence-Corse (palette blanc). Dans les IGP du Languedoc-Roussillon, elle est utilisée dans la composition des vins blancs, rosés et gris. La clairette Rs est aussi un cépage accessoire dans une trentaine d'AOC du Rhône. Les producteurs de clairette de Die peuvent l'utiliser en mélange avec la clairette B et le muscat, même si ce n'est pas la clairette Rs qui confère à la clairette de Die la couleur rosée.\n\n## Des aptitudes culturales proches de la clairette B\n\nLa variété rosée possède les mêmes aptitudes culturales que la clairette B. Elle se révèle en terrain calcaire, sec et peu fertile. La clairette Rs est appréciée dans la fabrication des blancs, même si certains ont pu observer des risques de rosissement du vin. La taille de la grappe et la forme des baies sont les mêmes que&nbsp;celles de la clairette B ; seul l'épiderme de la baie se différencie et présente une tonalité rose.&nbsp;
        """,
        color: .pink,
        synonyms: [
        ]
    )

    static let `D5F9574D-0224-4F71-A990-9F7C0DA3E7C4` = DefaultGrapeVariety(
        id: UUID(uuidString: "D5F9574D-0224-4F71-A990-9F7C0DA3E7C4")!,
        name: "Fendant",
        description: """
        Raisin de table blanc très apprécié en Europe (l'un des rares à bénéficier d'une appellation, à Moissac). C'est aussi un raisin de cuve, cultivé principalement en Suisse (sous le nom de fendant dans le Valais) et en Savoie dans les secteurs proches du lac Léman (Crépy). En Alsace, il est devenu rare et entre souvent dans des assemblages. On le trouve aussi dans le Centre-Loire (Pouilly-sur-Loire), où il a cependant décliné au profit du sauvignon. Son vin frais et floral se termine souvent par une agréable amertume.
        """,
        color: .white,
        synonyms: [
            "Chasselas", "Gutedel"
        ]
    )

    static let `8A6DEE91-8D35-449B-AD30-C348878FBA1B` = DefaultGrapeVariety(
        id: UUID(uuidString: "8A6DEE91-8D35-449B-AD30-C348878FBA1B")!,
        name: "Fer-Servadou",
        description: """
        Cépage noir du Sud-Ouest donnant un vin aux tanins épicés et aux arômes de cassis et de framboise. Sous le nom de mansois, c'est le cépage principal du marcillac ; c'est aussi une des variétés importantes du Gaillacois, où il est appelé braucol. Il intervient également dans les assemblages d'autres appellations du Sud-Ouest (fronton, lavilledieu, estaing, madiran).
        """,
        color: .black,
        synonyms: [
            "Mansois", "Braucol", "Pinenc", "Fer Servadou"
        ]
    )

    static let `22A430E7-15DC-4D5A-BF13-445A78CE9084` = DefaultGrapeVariety(
        id: UUID(uuidString: "22A430E7-15DC-4D5A-BF13-445A78CE9084")!,
        name: "Folle Blanche",
        description: """
        Cépage blanc à la base d'eaux-de-vie de grande qualité (cognac, armagnac), mais qui a largement régressé pour céder la place à l'ugni blanc après la crise phylloxérique. Il donne des vins légers en alcool et d'une bonne vivacité dans l'appellation gros-plant-du-pays-nantais.
        """,
        color: .white,
        synonyms: [
            "Gros Plant"
        ]
    )

    static let `B99F3A1A-73DA-4BA0-A4B0-86BF96576760` = DefaultGrapeVariety(
        id: UUID(uuidString: "B99F3A1A-73DA-4BA0-A4B0-86BF96576760")!,
        name: "Fuella Nera",
        description: """
        Vieux cépage noir de Provence donnant un vin très coloré, bouqueté et rond, généralement assemblé avec d'autres cépages méridionaux. C'est une des deux variétés principales de l'appellation bellet, au-dessus de Nice.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `38ED64EE-A70D-4A76-A5EC-C83EA0119887` = DefaultGrapeVariety(
        id: UUID(uuidString: "38ED64EE-A70D-4A76-A5EC-C83EA0119887")!,
        name: "Cinsault",
        description: """
        ## Un cépage fertile\n\nLes propriétés du cinsault, cépage noir originaire de Provence, ont rapidement conquis les producteurs grâce à sa résistance à la sécheresse et son adaptation aux terroirs pauvres. Il a ainsi été exporté dans les régions du Maghreb productrices de vin comme l'Algérie ou les pays du sud de l'Europe. Depuis les années&nbsp;2000, la mise en culture de ce cépage a baissé en France, mais reste toutefois&nbsp;supérieure&nbsp;(autour de 18&nbsp;000&nbsp;hectares en 2018) à la production de cinsault de 1958. Le cinsault possède de nombreuses appellations locales, comme le bourdelas ou le gros marocain.\n\n## Le cépage des vins rosés\n\nCe cépage&nbsp;est largement favorisé dans le vignoble provençal,&nbsp;principale région productrice de vin rosé. Il n'est pas étonnant que le cinsault&nbsp;intervienne en tant que cépage principal dans des AOC de vins rosés ou gris du sud de la France, notamment le bandol rosé ou le cassis, ces appellations aux influences maritimes. Il est aussi utilisé dans des vins rouges et blancs, en cépage principal ou accessoire, dans un grand nombre d'AOC prestigieuses et d'IGP. C'est le cas de l'AOC châteauneuf-du-pape en blanc et rouge ou encore du beaumes-de-venise.\n\n## Le cépage des terroirs pauvres et secs\n\nLe cinsault convient admirablement aux terroirs pauvres et secs. Il a des rendements très élevés sur les terroirs fertiles, ce qui nuit à sa qualité. En revanche, ce raisin à baies très grosses se révèle dans les terroirs moins fertiles aux rendements plus réduits, mais de bien meilleure qualité.&nbsp;
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `63A98DF4-D99C-4470-BABF-8D4AC6E7618A` = DefaultGrapeVariety(
        id: UUID(uuidString: "63A98DF4-D99C-4470-BABF-8D4AC6E7618A")!,
        name: "Claverie",
        description: """
        ## Un cépage ancien\n\nLe claverie tirerait son nom du mot béarnais pour désigner un enclos. Il est originaire des Landes et des Pyrénées-Atlantiques et ne possède pas de synonymes officiels. Le claverie blanc est une variété de raisin de cuve. Son utilisation s'est drastiquement réduite au fil du temps.\n\n## Un cépage qui participe à la diversité variétale\n\nEn 1958, le claverie était cultivé sur 213&nbsp;hectares. En 2018, cette surface s'est réduite à 3,8&nbsp;hectares. C'est&nbsp;toutefois plus que dix ans auparavant où un seul hectare avait été&nbsp;encépagé en France. Ce cépage est donc encore usité et intervient dans la composition de nombreuses IGP de Provence, du Rhône et du Sud-Ouest, en blanc, rosé et rouge. Il&nbsp;est autorisé dans l'AOC tursan blanc, un vin qui provient de la même région que le claverie. Ce cépage, de moins en moins cultivé, est un témoin&nbsp;de la diversité variétale du vignoble du sud de la France,&nbsp;et mérite d'être conservé même si sa culture peut être délicate.\n\n## Un cépage&nbsp;délicat\n\nLe claverie est en effet un cépage délicat qui est très sensible à l'oïdium de la vigne et à l'anthracnose. Il résiste en outre assez mal à la pourriture grise. Il est peu fertile en taille courte. Les vins qui sont produits avec ce cépage sont légers et assez neutres, même s'ils expriment une certaine acidité. Les grappes sont moyennes et les baies peuvent être assez grosses avec un épiderme fin.&nbsp;
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `BA118F35-626F-4EF4-A86D-FE7FBE9B682F` = DefaultGrapeVariety(
        id: UUID(uuidString: "BA118F35-626F-4EF4-A86D-FE7FBE9B682F")!,
        name: "Colobel",
        description: """
        ## Aux origines du colobel\n\nCe cépage noir est une variété issue d’un croisement de la même espèce, à savoir d’une hybridation interspécifique. Le colobel pousse dans la vallée du Rhône, dans les départements du Rhône, de l’Ardèche ou encore de la Drôme. Sa production est peu répandue.\n\n## Quels sont les vins élaborés avec le colobel&nbsp;?\n\nLe colobel produit un vin à la fois coloré et tanique. Il est uniquement utilisé dans des assemblages. On le retrouve notamment dans l'assemblage de&nbsp;vins labellisés Indication géographique protégée (IGP) comme le coteaux-des-baronnies (rosé, blanc ou rouge) ou encore le drôme (rosé, blanc ou rouge) qui sont des vins dits «&nbsp;tranquilles&nbsp;».\n\n## Comment reconnaître le colobel&nbsp;?\n\nPour identifier le colobel, il faut d’abord observer ses feuilles&nbsp;: lorsqu’elles sont jeunes, elles sont de couleur verte à rougeâtre (à certains endroits). Lorsqu’elles sont adultes, elles possèdent un sinus pétiolaire en V qui est peu ouvert. Quant à ses baies, elles sont de forme ronde&nbsp;avec une chair quelque peu colorée. Enfin, le jeune rameau est doté d’une faible densité de poils couchés. Le colobel atteint sa maturité quatre semaines après le chasselas, un cépage blanc originaire de la Suisse. À savoir que le colobel noir donne des raisins uniquement destinés à produire du vin&nbsp;: c’est un vin de cuve. On ne trouve donc pas de grappes de colobel sur nos tables&nbsp;!
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `C8F42328-E776-45E4-82BD-E76AFC487B75` = DefaultGrapeVariety(
        id: UUID(uuidString: "C8F42328-E776-45E4-82BD-E76AFC487B75")!,
        name: "Corbeau",
        description: """
        ## Un cépage originaire de la Savoie\n\nC’est en Savoie qu’est apparu le corbeau, un cépage noir principalement utilisé pour l’élaboration du vin de cuve. Aussi appelée «&nbsp;Douce noire&nbsp;», cette variété de raisin&nbsp;était cultivée dans d’autres départements comme le Jura, la Dordogne, l’Ain, l’Isère ou encore le Lot-et-Garonne. Aujourd’hui, ce cépage n’est que peu utilisé.\n\n## Utilisation du corbeau en tant que cépage principal\n\nLe corbeau noir permet de produire des vins peu taniques et peu acides qui sont colorés et agréables en bouche. Son potentiel sucrant est faible à moyen. C’est un cépage qui sert notamment à l’assemblage de vins labellisés indication géographique protégée comme l’atlantique rosé ou rouge, l’isère rosé ou rouge, le périgord rosé ou rouge, etc. Il est apprécié pour ses arômes souples de cerise noire, de fruits rouges compotés, de violette, d’épices et de tabac.\n\n## Quelles sont les spécificités du corbeau&nbsp;?\n\nLe corbeau est connu pour être résistant&nbsp;: il est peu sensible aux maladies comme la pourriture grise et l’oïdium. Comment identifier ce cépage&nbsp;? Ses grappes sont de petite à moyenne taille, ses baies sont de forme arrondie ou légèrement elliptique et ses rameaux possèdent une surface côtelée. Quant à ses feuilles, elles sont de couleur verte avec des plages bronzées lorsqu’elles sont jeunes. À maturité, elles sont de forme pentagonale ou cunéiforme.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `9A540AD5-1794-4C6D-9B40-C1EF82676481` = DefaultGrapeVariety(
        id: UUID(uuidString: "9A540AD5-1794-4C6D-9B40-C1EF82676481")!,
        name: "Colombard",
        description: """
        ## Où le colombard est-il cultivé&nbsp;?\n\nLe colombard provient du croisement entre le chenin et le gouais. C’est l’un des cépages les plus anciens des Charentes. Aujourd’hui, sa production est localisée dans le Gers, les Landes et le Lot-et-Garonne. C’est un cépage qui se plait dans les climats tempérés océaniques à tendance méditerranéenne. À savoir, ce cépage s’est également exporté en Californie et en Afrique du Sud&nbsp;!## Colombard&nbsp;: quelle utilisation&nbsp;?\n\nLe colombard est l’un des cépages dominants des côtes-de-gascogne, un vin d'indication géographique protégée du sud-ouest de la France. De façon générale, c’est dans les vins blancs à la fois fins, vifs, rafraîchissants et corsés que l’on trouve le colombard. L’une des spécificités de ce cépage est de donner des vins aromatiques&nbsp;: il délivre notamment des notes d’agrumes, de fruits de la passion, de mangue, d’ananas et de fleurs. Le colombard est présent dans des vins qui ne sont pas destinés à être vieillis.\n\n## Les spécificités du colombard\n\nLe colombard a des feuilles bien spécifiques&nbsp;: jeunes, elles sont de couleur jaune avec des plages bronzées. À maturité, elles peuvent être entières ou trilobées. Les grappes sont de forme cylindrique (taille moyenne) et les baies sont de forme elliptique (également de taille moyenne). Sachez que ce cépage blanc est sensible aux maladies comme le mildiou, la pourriture grise et l’oïdium.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `97417FBF-45B1-4A70-A784-CD5257170DD5` = DefaultGrapeVariety(
        id: UUID(uuidString: "97417FBF-45B1-4A70-A784-CD5257170DD5")!,
        name: "Gewurztraminer",
        description: """
        ## Un cépage originaire du Tyrol\n\nLe nom de gewurztraminer provient de la ville de Tramin ou Termeno, dans le Tyrol italien, où il est cultivé depuis le Moyen-Âge. Il est cultivé pour la première fois en France au moins depuis le XIXe&nbsp;siècle en Alsace. Représentant aujourd'hui 14&nbsp;000&nbsp;hectares dans le monde, il est principalement cultivé en Alsace et en Lorraine pour 3&nbsp;000&nbsp;hectares, et son appellation est souvent confondue avec le savagnin rose dont il serait issu. Ce cépage est aussi connu sous de multiples autres noms dans le monde, tels qu'auvernas rouge, clevner, rotedel, traminec ou encore gringet.\n\n## Un cépage emblématique de l'Alsace\n\nLe gewurztraminer est de nos jours devenu un cépage emblématique de l'Alsace, et également de la Lorraine. Il affectionne les coteaux bien exposés sous les climats continentaux, avec des sols calcaires, mais fertiles. Il occupe aujourd'hui la troisième place d'encépagement en Alsace derrière le riesling et le pinot blanc, et il peut y être cultivé dans 51&nbsp;secteurs classés grand cru.\n\n## Un vin très aromatique\n\nQu'il soit vinifié en vin blanc sec ou en vin moelleux, ce cépage offre une riche palette aromatique, connue pour ses arômes caractéristiques de rose et de litchi. Il produit des vins très parfumés aux notes de fruits exotiques comme l'ananas ou la mangue, et aux touches épicées comme le clou de girofle. Pour ces raisons, le vin issu du gewurztraminer s'associe à des mets au goût prononcé, comme les fromages alsaciens. Moelleux, c'est un incontournable des apéritifs.
        """,
        color: .pink,
        synonyms: [
        ]
    )

    static let `DAEEF600-AE04-4EAA-8C2F-4B3B2E9C9DE6` = DefaultGrapeVariety(
        id: UUID(uuidString: "DAEEF600-AE04-4EAA-8C2F-4B3B2E9C9DE6")!,
        name: "Couderc",
        description: """
        ## Couderc&nbsp;: quelle est sa région d’origine&nbsp;?\n\nDirection les plaines du midi de la France pour découvrir le couderc, un cépage noir issu d’un croisement naturel interspécifique. À la fois rustique et rigoureux, le couderc pousse principalement dans le Gard, mais peut aussi être cultivé dans le Rhône, la Loire, le Beaujolais ou encore en Provence. En France, on le retrouve aussi sous l'appellation&nbsp;7120 couderc.\n\n## Utilisation du couderc&nbsp;: dans quels vins&nbsp;?\n\nCe cépage noir est une variété de raisin de cuve qui donne un vin coloré et qui doit idéalement être vinifié en rosé pour offrir de meilleurs résultats. Côté goût, le couderc délivre des notes de cassis (ou plus globalement de fruits rouges) et parfois de goudron. Il peut être utilisé pour assembler des vins comme le cévennes blanc, le comtés-rhodaniens, le coteaux-d’ensérune, le coteaux-des-baronnies, le côtes-de-thau, le gard, le pays-d’hérault, le mont-caume, le landes ou encore l’ardèche.\n\n## Identifier le couderc&nbsp;: que faut-il observer&nbsp;?\n\nLes jeunes feuilles du couderc sont brillantes et de couleur verte avec des plages bronzées. Quant aux feuilles adultes, elles sont de forme pentagonale ou orbiculaire, entières ou trilobées. Ses grappes sont petites à moyennes et ses baies sont elliptiques. Le couderc est un cépage noir vigoureux, mais sensible à la chlorose, à savoir une décoloration des feuilles causée par un manque de chlorophylle.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `C584F8B0-D1DF-4770-BC46-432B0EA9784F` = DefaultGrapeVariety(
        id: UUID(uuidString: "C584F8B0-D1DF-4770-BC46-432B0EA9784F")!,
        name: "Grenache Poilu",
        description: """
        Cépage noir originaire d'Espagne, qui tire son nom de l'aspect de ses feuilles. Il peut figurer dans l'encépagement de plusieurs appellations du Languedoc-Roussillon. Il donne un vin peu coloré, assez proche du grenache, légèrement moins riche en alcool.
        """,
        color: .black,
        synonyms: [
            "Lledoner Pelut"
        ]
    )

    static let `547AFEC9-65EC-454A-A439-504999811F12` = DefaultGrapeVariety(
        id: UUID(uuidString: "547AFEC9-65EC-454A-A439-504999811F12")!,
        name: "Gringet",
        description: """
        Cépage blanc de la vallée de l'Arve en Haute-Savoie. Confidentiel, c'est le cépage principal du vin-de-savoie Ayze (tranquille ou effervescent).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `0AC74A16-63B7-41CE-A7B4-DE96F66EA2E7` = DefaultGrapeVariety(
        id: UUID(uuidString: "0AC74A16-63B7-41CE-A7B4-DE96F66EA2E7")!,
        name: "Graisse",
        description: """
        ## Un cépage originaire du Sud-Ouest\n\nLe graisse est probablement un descendant du Gouais blanc, et c'est un cépage que l'on retrouve principalement dans le sud-ouest de la France. Également appelé blanquette, plant de graisse ou gras, ce cépage est nommé ainsi pour la consistance visqueuse et grasse de son moût.\n\n## Une culture en déclin depuis plusieurs décennies\n\nSi le graisse était encore cultivé à hauteur de 2&nbsp;700&nbsp;hectares environ à la fin des années&nbsp;1950, sa superficie est progressivement retombée au fil des décennies, et sa surface cultivée ne représente plus que 16 ou 17&nbsp;hectares de nos jours, quasi exclusivement dans le Sud-Ouest. En tant que cépage principal, il est encore utilisé dans quelques vins blancs de Bordeaux, notamment du Périgord.\n\n## Le graisse, un cépage d'eau-de-vie\n\nSi le graisse est utilisée de façon assez confidentielle dans l'assemblage de certains vins IGP du Rhône ou de Provence, comme le rosé du Var, c'est un cépage servant à l'élaboration d'eaux-de-vie, pour sa consistance particulière. Il entre ainsi dans la fabrication du célèbre armagnac, dont il fait partie de l'encépagement, et il donne un vin plutôt neutre en goût, et assez acide. Pour les eaux-de-vie, le graisse offre une belle longueur en bouche et beaucoup de gras, ce qui est idéal pour l'armagnac, associé à des cépages comme l'ugni-blanc et le colombard.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `69D001E4-106C-4042-B05A-C6F01BEDB253` = DefaultGrapeVariety(
        id: UUID(uuidString: "69D001E4-106C-4042-B05A-C6F01BEDB253")!,
        name: "Côt",
        description: """
        ## Où le cot est-il né&nbsp;?\n\nC’est à l’ouest de la ville de Cahors, la préfecture du Lot, qu’est né le cot ou malbec. Plus précisément, ce cépage noir est cultivé à cheval sur la vallée du Lot et sur les causses du Quercy. Le cot s’est également exporté en Argentine, en Californie, en Italie ou encore au Chili. On le retrouve également sous le nom d'auxerrois, côt, pressac ou encore grifforin.\n\n## Dans quel vin AOC trouve-t-on le cot ?\n\nLe cot ou malbec est le cépage principal du cahors, un vin rouge d’appellation d’origine contrôlée qui est produit dans le vignoble du sud-ouest de la France. Les deux autres cépages dominants qui servent à assembler ce vin sont le merlot et le tannat. Le cot est aussi utilisé pour élaborer le touraine-amboise (un vin AOC catégorisé en AOC Touraine) en compagnie du chenin, un cépage blanc. De façon générale, le cot donne des vins colorés, parfumés et taniques qui apprécient le vieillissement en cuve ou en barrique.\n\n## Quelles sont les particularités de ce cépage noir&nbsp;?\n\nLe cot est résistant mais sensible à la coulure, à savoir la chute des fleurs ou des jeunes fruits. Ses jeunes feuilles sont de couleur verte avec des plages bronzées et ses feuilles adultes sont entières ou trilobées. Elles possèdent un sinus pétiolaire ouvert en U ou en V. Le cot rougit partiellement à l’automne. Ses grappes sont de taille moyenne et ses baies sont de forme sphérique. Elles possèdent une chair juteuse et sucrée.
        """,
        color: .black,
        synonyms: [
            "Malbec", "Auxerrois"
        ]
    )

    static let `13922A89-5B5B-43BE-94E6-7D5A65BE5E37` = DefaultGrapeVariety(
        id: UUID(uuidString: "13922A89-5B5B-43BE-94E6-7D5A65BE5E37")!,
        name: "Duras",
        description: """
        ## D’où le duras provient-il&nbsp;?\n\nLe duras est un cépage noir qui est originaire du Tarn. Il est issu d’un croisement intraspécifique entre le tressot et le savagnin. C’est à Gaillac que ce cépage est aujourd’hui cultivé. Il redoute les terres argileuses et apprécie les sols sableux et calcaires.\n\n## Dans quels vins AOC&nbsp;le duras est-il utilisé ?\n\nLe duras peut être vinifié seul ou utilisé avec d’autres cépages. Il est notamment obligatoire dans l’assemblage du gaillac rouge, un vin d’appellation d’origine contrôlée qui contient aussi du fer servadou, de la syrah, du merlot et du cabernet sauvignon. C’est grâce à ce décret (publié en 1970) que sa production va être multipliée par dix&nbsp;entre 1970 et 1994. Les vins issus du duras sont assez colorés, chaleureux et parfumés&nbsp;: ils délivrent des arômes de fruits noirs, d’épices et de poivre. À noter, le duras est également présent dans l’encépagement des côtes-de-millau et de l’estaing.\n\n## Quelles sont les spécificités du duras&nbsp;?\n\nRésistant et fertile, le duras est un cépage qui est assez sensible aux maladies comme l’oïdium, le mildiou ou encore l’eutypiose. Il craint également les acariens. Le duras possède de jeunes feuilles de couleur jaune et des feuilles adultes orbiculaires dotées de cinq à sept lobes qui rougissent pendant l’automne. Ses baies sont de couleur noire aux reflets bleus&nbsp;et sont caractérisées par une chair ferme et peu juteuse.\n\n## &lt;&nbsp;
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `770F2680-1662-4CF0-95FD-3814F3835859` = DefaultGrapeVariety(
        id: UUID(uuidString: "770F2680-1662-4CF0-95FD-3814F3835859")!,
        name: "Groslot",
        description: """
        ## Un cépage français\n\nOriginaire de la vallée de la Loire, le grolleau noir, également dénommé bourdalès, pineau de Saumur ou bien grolleau de Tours, est de moins en moins cultivé dans l'Hexagone. On retrouve néanmoins quelques vignes de ce cépage en&nbsp;Maine-et-Loire, en Loire-Atlantique et en Vendée.&nbsp;## Rouges secs et rosés fruités\n\nLe grolleau noir&nbsp;donne lieu à des vins légers, avec une faible teneur en alcool. Ses&nbsp;vins rouges sont&nbsp;ronds, fruités et originaux, avec des&nbsp;notes sucrées de fraise, de framboise, et&nbsp;parfois épicées et poivrées. Assemblé au cabernet franc, il allège le côté tanique des vins rouges les plus puissants. Ce cépage&nbsp;entre notamment dans l'élaboration&nbsp;du rosé d’Azay-le-Rideau. En tant que cépage accessoire, il&nbsp;produit également des vins tranquilles comme l'anjou rouge, un vin rouge sec, ou&nbsp;des rosés d'AOC comme le rosé de Loire, le rosé d'Anjou, le touraine primeur ou le saumur mousseux.\n\n## Les particularités d'un cépage très productif\n\nLe grolleau noir, qui possède pas moins de&nbsp;cinq clones agréés, est&nbsp;un descendant du&nbsp;gouais. Il arrive à maturité vingt jours environ après le chasselas. Facilement reconnaissable grâce à sa peau&nbsp;bleutée assez fine et le jus abondant de ses baies, il&nbsp;reste toutefois sensible au vent et à certaines maladies. Il peut être très productif, à condition qu'il soit taillé court. Ses feuilles adultes possèdent rarement cinq lobes&nbsp;: elles en ont trois, ou aucun. Très bronzées, elles se parent partiellement de rouge quand vient l'automne.
        """,
        color: .black,
        synonyms: [
            "Grolleau"
        ]
    )

    static let `3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC` = DefaultGrapeVariety(
        id: UUID(uuidString: "3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC")!,
        name: "Heida",
        description: """
        ## Savagnin&nbsp;: quelles sont les origines de ce cépage blanc ?\n\nLes origines de ce cépage rosé ne sont pas vraiment connues. Il viendrait du Tyrol autrichien et aurait été planté en Franche-Comté au XVIe&nbsp;siècle. Il s'épanouit depuis dans cette région. Le savagnin rosé tire son nom des mots « savanun » ou « sauvanon ». Il est aussi dénommé gringet en Haute-Savoie et fait partie de la famille des traminers.\n\n## Dans quels types de vins peut-on retrouver le savagnin blanc ?\n\nLes vins issus du savagnin blanc peuvent vieillir pendant très longtemps. Ce cépage est utilisé dans la préparation du vin jaune. Il produit également du vin de paille, très liquoreux, et participe à l'élaboration des crémants du Jura. On retrouve le savagnin blanc dans le côtes-du-jura, l'étoile et l'arbois. Les arômes qui se dégagent de ces vins complexes sont très divers. On sent des notes de fleurs, de pomme verte, de noisettes, de miel ou encore de noix. C'est un vin très rond en bouche.\n\n## Comment reconnaître le savagnin blanc ?\n\nLes grappes de raisin du savagnin blanc sont de taille moyenne, de couleur blanche. Elles donnent des grains à la peau épaisse, qui résistent donc très bien aux diverses maladies courantes, comme la pourriture grise. Quant aux feuilles, elles sont plutôt vert foncé. Le savagnin blanc pousse à merveille sur les éboulis calcaires et les sols marnais. Il produit les vins à vendanges tardives et offre une chair sucrée et juteuse.
        """,
        color: .white,
        synonyms: [
            "Naturé", "Savagnin", "Paien"
        ]
    )

    static let `4C7A80C4-0580-4E12-B5A3-D36020D7CE0F` = DefaultGrapeVariety(
        id: UUID(uuidString: "4C7A80C4-0580-4E12-B5A3-D36020D7CE0F")!,
        name: "Jacquère",
        description: """
        Cépage blanc de Savoie qui donne des vins légers et frais, aux arômes de fleurs blanches et d'agrumes nuancés de touches de pierre à fusil. Variété principale de l'appellation vin-de-savoie, il est vinifié seul ou en assemblage. On le rencontre également dans le Bugey.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `AF9B1F6B-CD83-42B6-B377-E08092BB9709` = DefaultGrapeVariety(
        id: UUID(uuidString: "AF9B1F6B-CD83-42B6-B377-E08092BB9709")!,
        name: "Durif",
        description: """
        ## Un cépage originaire du Dauphiné\n\nLes origines du durif noir remontent à la fin du XIXe&nbsp;siècle en France, plus précisément dans le département actuel de l'Isère. Il est issu d'un croisement entre les cépages syrah et peloursin, et se diffuse notamment dans le Tarn et l'Aveyron, choisi pour sa bonne résistance au mildiou. Sa culture en France est aujourd'hui confidentielle avec moins d'un hectare, mais il se retrouve aux quatre coins du monde, comme en Californie ou en Afrique du Sud.\n\n## Un cépage aux nombreuses appellations\n\nEn raison de sa diffusion importante sur les différents continents, notamment en Israël ou en Australie, le durif noir se voit souvent dénommer de différentes façons selon les lieux. Tantôt appelé petite syrah, pinot de Romans, serine, duret ou encore gros noir, ce cépage est à bourgeonnement tardif. Il est souvent utilisé en assemblage, notamment aux États-Unis, mais aussi en monocépage où il offre des caractéristiques intéressantes.\n\n## Le durif, un vin tanique et presque noir\n\nLe durif offre en monocépage des vins de caractère qui se démarquent par une couleur puissante rouge foncé, presque noire. Il offre des vins d'une belle richesse tanique, aux arômes de poivre, ainsi que de fruits rouges comme le cassis, la mûre ou la groseille, et même de chocolat. Par ailleurs, le durif noir donne un vin doté d'une belle acidité.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `63538083-D1C5-48AE-BA11-2A227EB91690` = DefaultGrapeVariety(
        id: UUID(uuidString: "63538083-D1C5-48AE-BA11-2A227EB91690")!,
        name: "Gamay",
        description: """
        ## Un concurrent du pinot noir\n\nLe gamay est un cépage dont les origines remontent au XIVe&nbsp;siècle en Bourgogne, du côté de Saint-Aubin. Alors planté de façon importante sur le territoire bourguignon, il commence à faire concurrence au pinot noir pour sa plus grande productivité. Il est planté dans le Beaujolais, entre Lyon et Mâcon, où il s'épanouit pleinement. Il se retrouve aujourd'hui dans d'autres régions, comme en Savoie ou en Lorraine.\n\n## Le gamay, pour des vins d'une grande finesse\n\nProbablement issu d'un croisement entre pinot noir et gouais B, le gamay est cultivé à hauteur de 33&nbsp;000&nbsp;hectares dans le monde aujourd'hui, dont 30&nbsp;000 en France, et 22&nbsp;000 dans le Beaujolais. Très productif, il doit être limité pour obtenir la meilleure qualité, et il permet l'élaboration de vins d'une grande finesse et de nombreuses AOC, comme les mâcons, bugeys, anjous ou encore touraines.\n\n## Un vin rouge fruité\n\nRobuste et précoce, le cépage gamay noir, qu'on appelle également gamay d'Arcenant, gamay de Caudoz ou encore olivette beaujolaise, peut donner des vins très fins et des déclinaisons très gourmandes de vins rouges, ronds et fruités. Il est utilisé en tant que cépage principal dans une grande variété de vins, surtout du Beaujolais, notamment en vin rouge primeur de caractère. Les notes de fruits rouges offerts par le gamay tournent autour de la framboise et du cassis, tandis qu'il exprime des arômes de fruits blancs comme la pomme et la poire, et un côté épicé. Le gamay convient à la gastronomie lyonnaise, ses fromages et sa charcuterie.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `E858BEF1-C340-414A-AD50-C9D7C72365FF` = DefaultGrapeVariety(
        id: UUID(uuidString: "E858BEF1-C340-414A-AD50-C9D7C72365FF")!,
        name: "Gascon",
        description: """
        ## Un cépage français peu cultivé aujourd'hui\n\nLe gascon noir est un cépage originaire de l'Orléanais, qui était notamment cultivé en quantité dans l'Yonne avant la crise du phylloxera. Aujourd'hui en voie de disparition, à la culture très confidentielle dans quelques vignobles, notamment en Sologne, ce cépage est également appelé gamay d'Orléans ou franc noir de l'Yonne.\n\n## Le gascon, un cépage productif à petites grappes\n\nLe cépage gascon noir se caractérise par des grappes petites à moyennes, compactes, d'une jolie couleur noire bleutée, et dont le feuillage va entièrement rougir à l'arrivée de l'automne. C'est un cépage assez vigoureux et productif qui apprécie les sols bien exposés. Il est aujourd'hui utilisé en tant que cépage principal dans quelques vins de Bordeaux, et en assemblage dans des vins blancs, rosés ou rouges, principalement dans le quart sud-est de la France.\n\n## Des vins vifs et acides\n\nLe gascon noir, bien que peu cultivé de nos jours, offre des caractéristiques intéressantes, avec des vins très vifs, dotés d'une belle acidité et très colorés. Moyennement alcooliques, ces vins peuvent offrir des notes de fruits rouges (groseille), de réglisse ainsi que d'épices. Les vins issus du gascon noir sont également minéraux et sont adaptés à une cuisine de terroir, à des mets traditionnels tels que le pot-au-feu.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `C72FCDCE-8072-49F1-8ED1-232F3D4A4F17` = DefaultGrapeVariety(
        id: UUID(uuidString: "C72FCDCE-8072-49F1-8ED1-232F3D4A4F17")!,
        name: "Len de L'El",
        description: """
        Cépage blanc du Sud-Ouest ayant contribué à la renommée des gaillac. Son nom occitan (&#34loin de l'œil&#34 ) s'explique par un pédoncule très long qui place la grappe loin du bourgeon (œil) qui lui a donné naissance. S'il peut produire des vins secs, les vignerons laissent volontiers surmûrir ses grosses grappes pour en tirer des vins moelleux ou liquoreux. Il peut être vinifié seul ou assemblé à un ou plusieurs cépages de l'appellation : mauzac, muscadelle, ondenc ou sauvignon.
        """,
        color: .white,
        synonyms: [
            "Loin de L'Œil"
        ]
    )

    static let `C94A532E-09BE-4F73-AD82-E89BDAF3AE9C` = DefaultGrapeVariety(
        id: UUID(uuidString: "C94A532E-09BE-4F73-AD82-E89BDAF3AE9C")!,
        name: "Macabeu",
        description: """
        Cépage blanc d'Espagne (Catalogne) introduit en Roussillon il y a fort longtemps. Il participe à l'assemblage de plusieurs vins blancs AOC du Languedoc-Roussillon. Vendangé tôt et associé à d'autres cépages comme le grenache blanc, il fournit des vins blancs secs, floraux et fruités, d'une bonne fraîcheur. Vendangé plus tard, il entre dans la production de certains vins doux naturels comme le rivesaltes blanc.
        """,
        color: .white,
        synonyms: [
            "Maccabéo"
        ]
    )

    static let `28D22B3F-9A7F-4B01-B671-BE4A699036E6` = DefaultGrapeVariety(
        id: UUID(uuidString: "28D22B3F-9A7F-4B01-B671-BE4A699036E6")!,
        name: "Grenache",
        description: """
        ## Un cépage typiquement catalan\n\nOriginaire des terres catalanes, le grenache blanc a été importé en France grâce aux ducs d'Aragon. Aujourd'hui cultivé essentiellement autour du bassin méditerranéen, il s'étend des plaines du Roussillon jusqu'en Provence, en passant par les&nbsp;côtes du Rhône méridionales. À l'étranger,&nbsp;on le trouve en Grèce et en Afrique du Sud. Dans son pays d'origine, l'Espagne, il&nbsp;est implanté&nbsp;aux alentours de Barcelone et dans les provinces&nbsp;de&nbsp;Tarragone, d'Aragon&nbsp;et de&nbsp;Navarre.\n\n## Un vin blanc sec et fruité\n\nPeu acide, le grenache blanc permet d'obtenir des vins secs&nbsp;dotés d'une rondeur en bouche. Il offre un bel équilibre gustatif lorsqu'il est&nbsp;assemblé&nbsp;à la&nbsp;roussanne, à la&nbsp;marsanne, au&nbsp;bourboulenc&nbsp;ou au&nbsp;viognier. Il produit également des vins doux naturels comme le&nbsp;rasteau, le&nbsp;maury, le&nbsp;rivesaltes&nbsp;et le&nbsp;banyuls. Celui qu'on nomme aussi le garnacha, le san jaime, le silla blanc ou encore le feher grenache est très aromatique&nbsp;et délivre des notes fruitées de reine-claude, de nectarine, de melon et de coing.\n\n## D'une grande robustesse\n\nEn France,&nbsp;le grenache blanc s'étend sur plus de 10&nbsp;000&nbsp;hectares. Particulièrement robuste, il supporte la sécheresse et se développe dans les sols caillouteux. Il produit des&nbsp;grappes volumineuses aux baies&nbsp;rondes de taille moyenne et au jus sucré. Il peut être productif si ses rameaux sont taillés suffisamment&nbsp;court. Le grenache blanc est reconnaissable à&nbsp;ses feuilles anguleuses et&nbsp;très brillantes, découpées en 5&nbsp;lobes. Résistant à l'oïdium,&nbsp;il est plus sensible à la pourriture grise, au&nbsp;mildiou, à l'excoriose, aux vers de la grappe et à&nbsp;la carence en magnésie.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `CE099C03-B2A9-4804-9329-322968B344D7` = DefaultGrapeVariety(
        id: UUID(uuidString: "CE099C03-B2A9-4804-9329-322968B344D7")!,
        name: "Malvoisie",
        description: """
        Nom donné localement à différents cépages, notamment le pinot gris (Pays nantais) et le vermentino (Provence et Corse).
        """,
        color: .grey,
        synonyms: [
            "Vermentino"
        ]
    )

    static let `0A43DAF5-D8EC-46CA-A42E-66EF722772AC` = DefaultGrapeVariety(
        id: UUID(uuidString: "0A43DAF5-D8EC-46CA-A42E-66EF722772AC")!,
        name: "Grenache",
        description: """
        ## Un cépage venu d'Espagne\n\nInitialement cultivé&nbsp;sur&nbsp;les coteaux ensoleillés de la Rioja, en Espagne, le grenache noir a progressivement gagné du terrain&nbsp;en Sardaigne et en France, à partir du Moyen-Âge. Dans l'Hexagone, celui que l'on surnomme aussi vin de garnache, roussillon, aragonais ou encore bois jaune, s'est développé sur tout le littoral méditerranéen&nbsp;et en particulier dans les vignobles provençaux et corses. On le retrouve aussi dans le Languedoc-Roussillon et dans la vallée du Rhône.\n\n## Assemblages et AOC\n\nPeu acide et&nbsp;plutôt doux, le grenache noir&nbsp;peut être consommé seul ou assemblé à la&nbsp;syrah, au carignan ou au mourvèdre. Il&nbsp;entre dans la composition de crus renommés à l'appellation d'origine contrôlée, comme le châteauneuf-du-pape&nbsp;ou le rivesaltes. Très sucré, il fait partie des crus les plus riches en alcool.\n\n## Un vin&nbsp;doux méditerranéen\n\nLe grenache noir se distingue grâce à ses&nbsp;grappes fournies aux baies rondes assez grosses. Ce cépage particulièrement résistant à la sécheresse donne un jus très sucré. Toutes ces caractéristiques lui confèrent&nbsp;une puissance aromatique aux arômes&nbsp;fruités,&nbsp;que viennent enrober des notes d'épices, de café, de caramel, de&nbsp;cacao et même de fruits secs. Son caractère méditerranéen&nbsp;fait de ce vin doux naturel&nbsp;l'un des&nbsp;rouges les plus répandus dans le monde. Désormais cultivé en Europe (en&nbsp;Espagne et en Italie), ce cépage productif s'est implanté en Afrique du Sud, en Australie, en Californie et en Amérique du Sud, plus particulièrement au Chili et en Argentine.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `BB98B894-54F4-41E6-9AB0-F66CAD23D906` = DefaultGrapeVariety(
        id: UUID(uuidString: "BB98B894-54F4-41E6-9AB0-F66CAD23D906")!,
        name: "Grenache",
        description: """
        ## D'Espagne jusqu'en France\n\nCultivé à l'origine en Espagne, où on le surnomme garnacha Rioja, le grenache gris s'est parfaitement implanté dans les vignobles français du Sud-Ouest, de Provence et de Corse. Il s'est également développé dans le Rhône, la Loire, le Languedoc-Roussillon et le Beaujolais. Dans l'Hexagone, sa production s'étend sur plus de 3&nbsp;000&nbsp;hectares.\n\n## Vins blancs, gris ou rosés\n\nVariété grise du grenache noir, ce cépage entre dans la composition des vins doux naturels et des vins gris, comme le sable-de-camargue ou le pays-d'oc. Il produit également des vins d'AOC, comme le banyuls, le châteauneuf-du-pape, le collioure, le rasteau et le maury blanc ou ambré. Très juteuses, les baies&nbsp;du grenache gris ont une&nbsp;couleur grise, rosée ou ambrée. Ses grappes tronconiques sont très compactes.\n\n## Un cépage robuste et aromatique\n\nArrivant à maturité&nbsp;30&nbsp;jours après le chasselas, le grenache gris&nbsp;produit des crus de caractère,&nbsp;aux arômes de fruits secs. Décliné en vin blanc sec, il se révèle plus sucré que le grenache noir. Ses crus blancs seront&nbsp;peu acides et assez minéraux, avec une belle longueur en bouche. Le grenache&nbsp;peut révéler des arômes d'abricots secs, de fenouil, d'amande amère, mais aussi de puissantes notes caramélisées. Cultivé en sol sec, le grenache gris ne craint ni le vent ni les longues périodes de sécheresse. Il est sensible à certaines maladies comme&nbsp;le mildiou, l'excoriose, la pourriture grise&nbsp;et les vers de la grappe. En revanche, il&nbsp;est plutôt résistant&nbsp;à l'oïdium.
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `8BA88391-8159-4D14-B4D9-24894D862964` = DefaultGrapeVariety(
        id: UUID(uuidString: "8BA88391-8159-4D14-B4D9-24894D862964")!,
        name: "Jurançon",
        description: """
        ## Les origines du jurançon noir\n\nCépage de raisins noirs, le jurançon noir est cultivé dans l’Agenais, dans le sud-ouest de la France. Il est né d’un croisement entre le malbec et la folle blanche. Ce cépage est parfois nommé folle noire, dame noire, plant de dame ou encore chalosse. La superficie des plantations de jurançon noir a fortement diminué&nbsp;: elle est passée de plus de 12&nbsp;300&nbsp;hectares en 1958 à moins de 400 en 2018. Il existe toutefois des plantations en Uruguay. Le jurançon noir n’a pas de rapport avec le vignoble du Jurançon.\n\n## Quels vins produit-on avec le jurançon noir ?\n\nLe jurançon noir est utilisé dans la production de vins rouges et rosés du Sud-Ouest comme l’agenais, le côtes-de-gascogne, le côtes-du-lot, le côtes-du-tarn ou encore le coteaux-de-glanes. Dans le vignoble de Bordeaux, le vin de vendanges tardives périgord vin de Domme, rosé ou rouge, peut être aussi produit avec du jurançon noir. Les vins élaborés avec ce cépage sont légers, simples et peu colorés. Les rosés sont vifs et dégagent des arômes de violette.\n\n## Les spécificités du jurançon noir\n\nLes grappes du jurançon noir sont courtes et compactes, de forme tronconique. Les baies sont de taille moyenne, ellipsoïdes ou sphérico-ellipsoïdes, à peau noire, très pruinée. Les jeunes feuilles sont duveteuses et jaunâtres. Lorsqu’elles sont adultes, les feuilles présentent cinq lobes, de petites dents ogivales et un limbe aranéeux.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `B8FB4FD0-E702-425D-B3ED-5427346CA583` = DefaultGrapeVariety(
        id: UUID(uuidString: "B8FB4FD0-E702-425D-B3ED-5427346CA583")!,
        name: "Mauzac",
        description: """
        Emblème des AOC gaillac et blanquette de Limoux, le cépage blanc mauzac s’est étendu à de nombreuses régions viticoles.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `B46562AC-BD85-4EBF-A706-732CB255DFCB` = DefaultGrapeVariety(
        id: UUID(uuidString: "B46562AC-BD85-4EBF-A706-732CB255DFCB")!,
        name: "Mancin",
        description: """
        ## Un cépage oublié du Bordelais\n\nLe mancin noir est un vieux et grand cépage du Bordelais. Délaissé durant de nombreuses années, on le trouve principalement dans le Sud-Ouest, le Bordelais, la Provence, les Côtes-du-rhône et en Corse. Il possède de nombreuses qualités qui font de lui un cépage de choix pour de nombreux vins. Durant ces dernières années, des&nbsp;viticulteurs français lui ont donné un&nbsp;second souffle.\n\n## Quels vins avec le mancin noir ?\n\nContrairement à de nombreux autres cépages, le mancin noir n'est pas un raisin de table. On le consomme très peu en tant que fruit. Son usage est presque strictement réservé à la conception des vins. Il est souvent utilisé en tant que cépage principal pour les vins du Périgord. On le retrouve également dans l'encépagement de&nbsp;vins d'Indication géographique protégée (IGP) des régions&nbsp;PACA, Occitanie et Rhône-Alpes, entre autres.\n\n## Un cépage très résistant\n\nLe cépage mancin noir est résistant, notamment face à la sécheresse, et évolue parfaitement en milieu aride. Il est riche en tanins. Ses grappes sont longues et sa couleur est plutôt foncée, voire bleutée. Son goût est agréablement acidulé. Les vins créés à partir de mancin noir sont corsés et ont un goût singulier typique de ce cépage. Son tanin donne du caractère&nbsp;au vin ainsi qu'une splendide couleur.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `F9A7E9CA-C2BC-4DBE-8817-5653EFF8A5B6` = DefaultGrapeVariety(
        id: UUID(uuidString: "F9A7E9CA-C2BC-4DBE-8817-5653EFF8A5B6")!,
        name: "Jurancon",
        description: """
        ## D’où vient le jurançon blanc ?\n\nLe jurançon blanc, également appelé braquet, plant debout ou encore quillard, est un cépage originaire du sud-ouest de la France. Il n’a aucun rapport avec le vin de Jurançon, qui est produit dans le Béarn. Il est possible qu’il soit issu d’un croisement entre la folle blanche et le pruéras (aussi appelé « bouchalès », « aubet » ou « picardan »). Il a aujourd’hui quasiment disparu puisque son aire de production était de moins de 5&nbsp;hectares en 2018. Pourtant, il couvrait plus de 5&nbsp;700&nbsp;hectares à la fin des années&nbsp;1950.\n\n## Quels vins avec le jurançon blanc ?\n\nParmi les vins produits avec le jurançon blanc, on trouve l’atlantique blanc et le périgord blanc. Ces vins de Bordeaux, acides et peu alcooliques, ne sont pas spécialement renommés. En revanche, le jurançon blanc entre dans la production de deux eaux-de-vie de vin très célèbres&nbsp;: le cognac et l’armagnac. Ce cépage peut aussi être utilisé avec d’autres pour l’élaboration de vins de Provence, du Rhône ou encore du Languedoc-Roussillon.\n\n## Les caractéristiques du jurançon blanc\n\nLes grappes de jurançon blanc sont petites, compactes et coniques. Les baies sont de taille moyenne, sphériques, à la peau fine et verte, virant au doré à maturité. La chair est moelleuse et juteuse. Les jeunes feuilles sont couvertes de duvet et de petites bosses. Lorsqu’elles sont adultes, elles présentent cinq lobes, de petites dents ogivales, un limbe duveteux et un sinus pétiolaire en forme de lyre.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `2F575290-5262-498C-861E-669FE26B4BCE` = DefaultGrapeVariety(
        id: UUID(uuidString: "2F575290-5262-498C-861E-669FE26B4BCE")!,
        name: "Grolleau",
        description: """
        ## Cépage classé de la vallée de la Loire\n\nFruit de la mutation grise du grolleau, ce cépage est originaire&nbsp;de Charente. Aujourd'hui, il ne se trouve plus qu'en Vendée et en&nbsp;Loire-Atlantique. La culture du grolleau gris, classé recommandé dans la&nbsp;vallée de la Loire, reste assez peu répandue dans l'Hexagone.\n\n## Des vins fruités et gourmands\n\nCe cépage&nbsp;au bon rendement&nbsp;donne lieu à&nbsp;des vins gris ou effervescents, aux arômes de fruits rouges. Le grolleau gris&nbsp;permet d'élaborer des vins assez gourmands, peu alcoolisés et assez souples. Utilisé en tant que cépage principal, il produit également des vins blancs ou rosés tranquilles (comme le calvados rosé, le périgord blanc ou le val-de-loire blanc), ainsi que des vins mousseux d'AOC (le touraine, le saumur, le crémant de Loire rosé ou l'anjou rosé). On le retrouve dans les vins doux rosés d'Anjou. Le grolleau donne lieu à des vins particulièrement&nbsp;appréciés en apéritif,&nbsp;avec une belle longueur en bouche et des notes fruitées et rafraîchissantes.\n\n## Celui que l'on surnomme le&nbsp;pinot de Saumur\n\nLe grolleau gris atteint sa maturité trois semaines après le chasselas. Sensible à la pourriture grise, il possède des grappes assez compactes de forme conique. Ses rameaux sont reconnaissables grâce à leur&nbsp;duvet blanc. Quant à ses baies, elles sont de taille moyenne, bien charnues et juteuses. Utilisé uniquement pour produire du vin, le grolleau gris, que l'on surnomme également « le pinot de Saumur »,&nbsp;se retrouve rarement sur les tables au moment du repas. Il est aussi très peu répandu à l'étranger.
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `E53410F3-A1A7-4103-9DD9-0708793B8267` = DefaultGrapeVariety(
        id: UUID(uuidString: "E53410F3-A1A7-4103-9DD9-0708793B8267")!,
        name: "Mérille",
        description: """

        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `F06D7AFC-6B97-4A04-B7D6-0060E2EFE41D` = DefaultGrapeVariety(
        id: UUID(uuidString: "F06D7AFC-6B97-4A04-B7D6-0060E2EFE41D")!,
        name: "Landal",
        description: """
        ## Cépage landal noir&nbsp;: les origines\n\nLe landal noir est un cépage hybride créé par Pierre Landot dans les années&nbsp;1930. Issu d’un croisement entre le 5455&nbsp;seibel (ou plantet) et le 8216&nbsp;seibel, il porte également le nom de 244&nbsp;landot. Ce cépage est présent dans les départements de la Vendée et du Val de Loire, même s’il est aujourd’hui plutôt rare (moins de 30&nbsp;hectares en 2018). À l’étranger, le landal noir est présent en Suisse (canton de Genève), au Canada (Ontario et Québec) ainsi qu’aux États-Unis.\n\n## Les vins élaborés avec le landal noir\n\nLa réglementation viticole française interdit l’utilisation de cépages hybrides pour l’élaboration de vins AOC. Le landal noir peut en revanche être utilisé pour produire des vins IGP (Indication géographique protégée). On le retrouve ainsi dans des vins du Languedoc-Roussillon (côtes-de-thau, pays-d'hérault, côtes-du-brian&hellip;), du Rhône (drôme, coteaux-des-baronnies) et de Savoie Bugey (coteaux-de-l’ain).\n\n## Quelles sont les spécificités du landal noir ?\n\nLes vins produits avec le landal noir dégagent des saveurs de framboise. Les grappes sont petites ou moyennes, compactes et cylindriques. Les baies sont de petit diamètre, arrondies, de couleur noire bleutée. Les feuilles sont à cinq lobes, avec un sinus pétiolaire en forme de U, et prennent une couleur rouge à l’automne. Ce cépage connaît un débourrement moyen et une maturité de première époque tardive.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `21ED899E-C966-43D3-AAD4-D864802D51B8` = DefaultGrapeVariety(
        id: UUID(uuidString: "21ED899E-C966-43D3-AAD4-D864802D51B8")!,
        name: "Gros Manseng",
        description: """
        ## D’où vient le gros manseng ?\n\nLe gros manseng est un cépage cultivé dans le sud-ouest de la France, plus précisément dans la région du Béarn. Il occupe environ 2&nbsp;800&nbsp;hectares. Sa superficie a doublé dans les années&nbsp;2000 alors qu’il était au bord de l’extinction dans les années&nbsp;1970. Ce cépage à maturation tardive est très proche du petit manseng, qui pousse également au pied des Pyrénées. On retrouve aussi ce cépage sous les noms de gros manseng blanc, gros mansenc ou iskiriota zuri handia (Pays basque).\n\n## Les vins emblématiques avec le gros manseng\n\nLe gros manseng est utilisé avec d’autres cépages comme le courbu et le petit courbu dans la production de vins blancs secs, dont les plus célèbres sont le jurançon, le pacherenc-du-vic-bilh, l’IGP Côtes de Gascogne ou encore l’irouléguy blanc. Il ne permet pas d’obtenir des vins moelleux, à la différence du petit manseng. Les vins secs à base de gros manseng dégagent des notes puissantes d’abricot, de pêche, d’épices et de coing. La récolte à un stade de surmaturation donne des vins aux notes de fruits exotiques.\n\n## Cépage gros manseng&nbsp;: quelles spécificités ?\n\nLe gros manseng se démarque du petit manseng par des baies plus grosses. Ses grappes sont allongées, de taille moyenne et ses feuilles peuvent être jaunes ou vertes. Il s’agit d’un cépage vigoureux et fertile qui apprécie les terrains calcaires et argileux et les arrière-saisons ensoleillées. Conduit en taille longue, le gros manseng connaît un débourrement précoce et une maturité tardive.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD` = DefaultGrapeVariety(
        id: UUID(uuidString: "6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD")!,
        name: "Marsanne",
        description: """
        ## Une variété très ancienne\n\nLa&nbsp;marsanne est apparue au 12e&nbsp;siècle dans la Drôme en région&nbsp;Auvergne-Rhône-Alpes. Désormais, ce cépage est aussi présent sur les terres de la région PACA et celles du Languedoc-Roussillon. Il aime le soleil et la chaleur, ingrédients propices à son bon développement. De nombreux plants&nbsp;sont cultivés dans la vallée du Rhône et les coteaux du Languedoc. On le retrouve également en Savoie.\n\n## Quel usage est réservé à la&nbsp;marsanne&nbsp;?\n\nLa marsanne est riche en goût. Elle évoque différentes saveurs. Certains lui attribuent à la fois un goût de noisette, de miel, de litchi, d'épices, etc. Cette&nbsp;diversité gustative en fait un excellent cépage pour confectionner des jus. Il est aussi un bon raisin de table. Cette vigne est un ingrédient de choix combiné à d'autres cépages pour produire des vins doux. Notamment utilisé&nbsp;dans l'appellation&nbsp;Hermitage en association avec la roussanne, on le retrouve aussi dans l'encépagement des côtes-du-rhône et des costières-de-nîmes.\n\n## Un cépage aux arômes floraux\n\nLa marsanne&nbsp;est notamment réputée pour sa générosité. Très floral, ce cépage donne vie à des vins doux, mais de caractère. Moyennement acide, son arôme a tendance à s'amplifier au fur et à mesure des années. Il est particulièrement apprécié&nbsp;intégré dans&nbsp;des vins pétillants et&nbsp;donne&nbsp;un léger goût de noisette lorsque le vin vieillit.&nbsp;
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `6C93913A-AFA8-465D-BB50-6DA741AC3D2B` = DefaultGrapeVariety(
        id: UUID(uuidString: "6C93913A-AFA8-465D-BB50-6DA741AC3D2B")!,
        name: "Meunier",
        description: """
        ## Meunier noir,&nbsp;le cépage&nbsp;du champagne&nbsp;\n\nLe meunier noir, qui compte de nombreuses autres appellations comme pinot meunier ou plant de Brie, est le deuxième cépage le plus utilisé en Champagne, après son proche parent le pinot noir et avant le chardonnay B. Les vins de Champagne apparaissent au XVIIIe&nbsp;siècle, même si la vigne est présente sur ce terroir depuis le haut Moyen-Âge. Surprise de la viticulture, le champagne, ce vin effervescent blanc, est produit grâce à deux cépages de raisin noir, le pinot et le meunier.&nbsp;## Un cépage longtemps boudé\n\nMalgré cet usage&nbsp;en Champagne, le meunier a été boudé par les viticulteurs. Il souffre en effet de la comparaison avec les qualités œnologiques du pinot noir. Il n'est d'ailleurs pas autorisé pour certains grands crus et premiers crus de Champagne. Pourtant, depuis quelques années, certains viticulteurs de Champagne&nbsp;semblent redécouvrir les avantages de ce cépage et offrent des cuvées 100&nbsp;% meunier noir. Les surfaces cultivées en France ont doublé en soixante ans. Au-delà de l'AOC Champagne, le meunier se retrouve dans des AOC de Touraine en rosé et d'Orléans en rosé et rouge.&nbsp;## Des qualités culturales indéniables\n\nLe meunier, reconnaissable au&nbsp;duvet blanchâtre qui orne ses feuilles, est un cépage résistant au gel tardif et particulièrement adapté aux sols fertiles et argileux, caractéristiques des cuestas de la Marne. Il confère aux vins une touche fruitée et souple appréciée, mais&nbsp;apporte&nbsp;toutefois moins d'acidité que le pinot N.
        """,
        color: .black,
        synonyms: [
            "Pinot Meunier"
        ]
    )

    static let `2204CC75-1E36-4DA5-8889-DB3CB26E5643` = DefaultGrapeVariety(
        id: UUID(uuidString: "2204CC75-1E36-4DA5-8889-DB3CB26E5643")!,
        name: "Marechal Foch",
        description: """
        ## D'où vient le&nbsp;Maréchal Foch ?\n\nLe cépage noir Maréchal Foch a été créé en 1911 par un viticulteur et industriel du nom d'Eugène Kuhlmann. Ce passionné est l'inventeur de plusieurs hybrides. Il a obtenu le Maréchal Foch, également nommé&nbsp;188-2 Kuhlmann,&nbsp;en combinant trois variétés&nbsp;: goldriesling, Vitis riparia, Vitis rupestris. Le&nbsp;goldriesling est un raisin blanc alsacien, lui-même hybride du riesling et du muscat. Les Vitis riparia et&nbsp;rupestris sont des vignes d'origine américaine. Il a été élaboré à Colmar en Alsace, dans l'institut viticole&nbsp;de son créateur.\n\n## Un cépage très sucré\n\nLe&nbsp;Maréchal Foch&nbsp;est un excellent raisin de table en raison de sa texture et de sa saveur sucrée. Il est utilisé dans l'encépagement de nombreux vins et également pour faire des jus de fruits. Il se marie parfaitement avec d'autres fruits ou raisins.\n\n## Le&nbsp;Maréchal Foch, une variété particulièrement résistante\n\nCe cépage créé en laboratoire est très résistant non seulement aux climats très froids typiques d'Amérique du Nord (pays de deux des cépages qui le composent), mais également aux maladies qui menacent bon nombre de ses cousins. En fonction de l'usage qu'on lui réserve, il peut être cultivé tôt ou un peu plus tard. Plus il est cultivé tard, plus il est sucré. Les vins de ce cépage sont très sucrés. Il est donc conseillé de les boire très frais. Il est apprécié pour son tanin et sa belle couleur.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `5FDC5931-E96E-43D1-9FC1-00ABC378FB90` = DefaultGrapeVariety(
        id: UUID(uuidString: "5FDC5931-E96E-43D1-9FC1-00ABC378FB90")!,
        name: "Marselan",
        description: """
        ## Un cépage hybride\n\nLe marselan cépage noir est un cépage hybride, résultat du mélange entre le grenache noir et le cabernet sauvignon. Le premier est espagnol et originaire de la région d'Aragon. Il y est apparu au 15e&nbsp;siècle. Le second, quant à lui, est un des cépages français les plus connus et les plus exportés. Il provient du sud-ouest de la France. Le marselan a été développé par des chercheurs de l'INRA et de l'ENSAM, dans l'Hérault. Depuis les années&nbsp;60, il a beaucoup voyagé. On le trouve notamment dans les vallées du Rhône et du Languedoc, en Californie, en Espagne et en Suisse.\n\n## Quelles sont les utilisations les plus communes du&nbsp;marselan cépage noir ?\n\nLe&nbsp;marselan cépage noir peut être utilisé en cépage unique, mais aussi mélangé avec d'autres cépages. Les&nbsp;amateurs apprécient la complexité gustative de cette vigne. Des côtes-du-rhône sont élaborés avec le marselan noir et de nombreux vins de pays également.\n\n## Un cépage à laisser vieillir\n\nLe&nbsp;marselan noir est un cépage aromatique aux notes parfumées. Délicatement âpre, il est à la fois riche et équilibré en tanins. Il se conserve bien et évolue au fil du temps. Ses propriétés confèrent au vin une souplesse et une couleur dense&nbsp;proche du violet. Pour apprécier toutes les vertus de ce cépage de qualité, il est recommandé de le tailler à une grandeur moyenne ou courte.&nbsp;
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `CADA19F4-0B8B-4A5D-828D-81F1CCD00305` = DefaultGrapeVariety(
        id: UUID(uuidString: "CADA19F4-0B8B-4A5D-828D-81F1CCD00305")!,
        name: "Melon",
        description: """
        ## Melon&nbsp;: un cépage d’origine bourguignonne\n\nCe cépage est introduit au milieu du XVIIe&nbsp;siècle sur les coteaux de la Loire. Toutefois, ce n’est qu’en 1709 qu’il s’impose véritablement en France après avoir résisté à une vague de froid historique. Son origine génétique n’est révélée qu’en 1999 après une étude réalisée à l’université de Californie. Le cépage melon est issu d’un croisement entre le pinot et le gouais blanc. À noter que de nombreux autres noms ont été donnés à ce cépage (gros auxerrois, melon de Bourgogne, biaune, gamay blanc, muscadet, pourrisseux&hellip;) et que son vignoble s’étend sur 11&nbsp;000&nbsp;hectares en France.\n\n## Les multiples utilisations du cépage melon\n\nUne multitude de vins blancs AOC muscadet utilisent uniquement ce cépage, mais il domine également les AOC coteaux bourguignons blancs et crémant de Bourgogne blanc ainsi que plusieurs IGP toujours en blanc. On le retrouve pourtant parmi les cépages accessoires de très nombreuses AOC du Beaujolais (en rosé et en rouge) et dans d’autres appellations célèbres&nbsp;: brouilly, juliénas, morgon, saint-amour, chiroubles&hellip;## Melon&nbsp;: des particularités d’élevage\n\nS’il est robuste, notamment contre le froid, il reste sensible aux maladies de la vigne et notamment au mildiou. Ce cépage se caractérise aussi par le fait d’être soumis à un élevage sur lies. L’objectif consiste à rendre le vin plus rond avec une meilleure puissance aromatique en ne le séparant pas de ses lies, ces dépôts jaunâtres au fond des cuves.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `1772D7FF-A4D9-402D-8480-8528C1895FEF` = DefaultGrapeVariety(
        id: UUID(uuidString: "1772D7FF-A4D9-402D-8480-8528C1895FEF")!,
        name: "Molette",
        description: """
        ## Un cépage savoyard\n\nCultivé sur les&nbsp;coteaux jurassiens,&nbsp;dans le Bugey et en Haute-Savoie,&nbsp;ce cépage blanc se plaît sur&nbsp;les petites pentes montagneuses&nbsp;dotées d'un sol riche en calcaire, constitué de graves, d'argile et d'éboulis. Issu d'un croisement entre le gouais et un autre cépage non identifié, le molette blanc est de moins en moins cultivé. Il est aussi connu sous le&nbsp;nom de&nbsp;molette de Seyssel.\n\n## Vins d'AOP et d'IGP\n\nLe molette blanc entre dans la composition de vins blancs de Savoie Bugey, du Périgord et de l'Atlantique. Il produit également les vins d'appellation d'origine contrôlée Bugey blanc (mousseux&nbsp;et pétillant) et&nbsp;Seyssel molette. Il est assemblé en&nbsp;tant que cépage accessoire pour produire le bugey montagnieu, mousseux ou pétillant. Il contribue à la fraîcheur de vins d'IGP de plusieurs régions comme le coteaux-de-l'ain blanc, le coteaux-des-baronnies, le drôme et le vin des Allobroges, entre autres. Il sert également à produire le&nbsp;bugey brut méthode traditionnelle.\n\n## Clarté et légèreté en bouche\n\nLe molette blanc produit un vin clair, léger et fruité. Ses crus sont&nbsp;assez acides et peu aromatiques. Assez neutre,&nbsp;le molette blanc est&nbsp;communément&nbsp;mélangé à&nbsp;l'altesse, un autre cépage typique de Savoie. Ce cépage de&nbsp;maturité tardive&nbsp;possède&nbsp;des grappes de taille moyenne&nbsp;aux baies assez petites, de forme ronde, voire plate. D'une grande finesse, ce cépage donne lieu à des vins élégants, dotés d'une faible teneur en alcool. Très vigoureux, il craint toutefois le mildiou et la pourriture grise.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `941C0FD5-41E2-46B3-9F84-33F9369925BA` = DefaultGrapeVariety(
        id: UUID(uuidString: "941C0FD5-41E2-46B3-9F84-33F9369925BA")!,
        name: "Muscadelle",
        description: """
        Cépage blanc cultivé en Gironde et en Dordogne, donnant des vins fruités discrètement muscatés. Très rarement vinifié seul, il est assemblé au sauvignon et au sémillon dans toutes les appellations de vins blancs secs ou doux du Bordelais (bordeaux sec, entre-deux-mers, sauternes. . . ), du Bergeracois (bergerac, monbazilllac. . . ) et d'autres AOC de ce secteur (côtes-de-duras, buzet blanc. . . ).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `2CD37FE2-86C2-47ED-A54A-2BB2CF59E0FF` = DefaultGrapeVariety(
        id: UUID(uuidString: "2CD37FE2-86C2-47ED-A54A-2BB2CF59E0FF")!,
        name: "Mollard",
        description: """
        ## Un cépage&nbsp;des coteaux alpins\n\nTraditionnellement cultivé dans les Hautes-Alpes, le mollard noir se retrouve&nbsp;également&nbsp;dans les vallées du Rhône (la Durance) et des Alpes (le&nbsp;Gapençais et&nbsp;l'Embrunais). Il existe également des cépages espagnols et portugais du nom de mollard, mais ils n'ont aucun lien avec le mollard noir français. On le retrouve sous le nom de molar, plant de Veynes ou encore boissier.\n\n## La base de l'encépagement des Hautes-Alpes\n\nLe mollard noir&nbsp;fait partie des cépages&nbsp;majeurs pour&nbsp;l'assemblage des crus haut-alpins. Il est utilisé&nbsp;comme cépage principal des vins de l'Atlantique et du Périgord rosés et rouges (périgord vin de Domme rouge). Il produit uniquement des vins d'Indication géographique protégée (IGP). Ses crus sont légers&nbsp;et apportent une belle fraîcheur en bouche. Très agréable à boire, il&nbsp;offre&nbsp;une belle puissance aromatique avec des&nbsp;arômes épicés, vanillés et fruités. Il délivre aussi des&nbsp;notes de poivre et de pain grillé, mais aussi de fruits rouges aussi acides que sucrés, comme la griotte ou la prune.\n\n## Un raisin bleuté\n\nOn reconnaît facilement le mollard noir grâce à ses grappes compactes en forme de cylindre ou de cône, aux baies moyennement grosses. Celles-ci ont une belle&nbsp;peau noire et bleutée. Leur chair est ferme et juteuse,&nbsp;de couleur rouge, et leur jus possède une belle acidité. De maturité deuxième époque tardive, le mollard noir résiste bien aux gelées. Il&nbsp;est assez sensible à certaines maladies de la vigne, comme l'oïdium,&nbsp;le mildiou&nbsp;et la pourriture grise.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC` = DefaultGrapeVariety(
        id: UUID(uuidString: "A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC")!,
        name: "Muscat Blanc à Petits Grains",
        description: """
        Cépage blanc cultivé depuis l'Antiquité sur les bords de la Méditerranée, considéré comme le plus noble des muscats. On en tire surtout des vins doux, souvent issus de mutage. En France, c'est le cépage unique de nombreux vins doux naturels : muscat-de-frontignan, muscat-de-mireval, muscat-de-lunel, muscat-de-saint-jean-de-minervois, muscat-de-beaumes-de-venise, muscat-du-cap-corse. Associé au muscat d'Alexandrie, il donne le muscat-de-rivesaltes. Il entre aussi dans la composition de blancs effervescents (clairette-de-die ; moscato d'asti et asti spumante en Italie) et secs (alsace-muscat). Puissamment aromatiques et complexes, ses vins évoquent le raisin frais, la rose, les fruits exotiques, les agrumes, les épices.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `B9BB109A-7E00-4732-9012-11FBF5ACC02F` = DefaultGrapeVariety(
        id: UUID(uuidString: "B9BB109A-7E00-4732-9012-11FBF5ACC02F")!,
        name: "Muscat D'Alexandrie",
        description: """
        Cépage blanc qui serait originaire d'Égypte. Il est consommé en raisin de table, en jus et en vins doux. Cultivé principalement dans les Pyrénées-Orientales, il participe à la production de vins doux naturels et notamment au muscat-de-rivesaltes (associé au muscat à petits grains). Il entre aussi à titre accessoire dans d'autres vins doux naturels blancs comme le rivesaltes. Ses vins onctueux présentent un bouquet évoluant vers le raisin passerillé et la figue sèche.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `3476F400-E028-4559-9132-D857564CDB85` = DefaultGrapeVariety(
        id: UUID(uuidString: "3476F400-E028-4559-9132-D857564CDB85")!,
        name: "Mauzac",
        description: """
        ## Mauzac rosé&nbsp;: un cépage issu du mauzac blanc\n\nLe cépage mauzac est issu de la région de Gaillac dans le département du Tarn. Il s’agit à l’origine d’un cépage de cuve blanc, mais une mutation naturelle a créé une variante dotée d’une pellicule rosée qu’on appelle donc le mauzac rosé ou mauzac rose Rs. Originaire du Sud-Ouest, ce cépage s’est développé sur le territoire national, si bien qu’on trouve des vignobles issus de ce cépage en Provence, en Corse, dans le Languedoc-Roussillon, autour du Rhône et de la Loire, dans le Beaujolais ou encore en Savoie.\n\n## Le gaillac et les multiples utilisations du mauzac rosé\n\nC’est naturellement dans les vins blancs AOC de Gaillac que le mauzac rosé fait office de cépage principal. Il domine le gaillac mousseux comme les productions tranquilles. Dans le Sud-Ouest, il est également majoritairement utilisé par les vins blancs IGP du Périgord, des côtes du Tarn et de l'Atlantique. Il peut également intervenir dans de nombreux IGP du sud de la France, des Landes aux Alpes-Maritimes en passant par l’Aude et l’Ardèche.\n\n## Mauzac rosé&nbsp;: une bonne résistance aux maladies des vignobles\n\nSi le mauzac rose est sensible aux vers de grappe, à l’acariose et à la pourriture grise, il résiste en revanche aux deux maladies qui mettent le plus en danger les vignobles à savoir le mildiou et l’oïdium. Par ailleurs, les couleurs rosées qui ont donné son nom à ce cépage mutant évoluent en mûrissant vers une couleur grise.
        """,
        color: .pink,
        synonyms: [
        ]
    )

    static let `0C1C17F9-0F31-440B-8CCE-D5BEB106FC14` = DefaultGrapeVariety(
        id: UUID(uuidString: "0C1C17F9-0F31-440B-8CCE-D5BEB106FC14")!,
        name: "Muscat Ottonel",
        description: """
        Cépage blanc cultivé en Alsace où il entre dans l'encépagement de l'alsace muscat (avec le muscat à petits grains, qui a régressé car un peu trop tardif pour la région). Il donne un vin aromatique finement muscaté, souvent vinifié en vin sec. On peut aussi récolter les grappes surmûries et/ou botrytisées pour obtenir des vendanges tardives et des sélections de grains nobles.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `8ABEAFBE-2B61-4F42-AD4F-D2043D7AE76B` = DefaultGrapeVariety(
        id: UUID(uuidString: "8ABEAFBE-2B61-4F42-AD4F-D2043D7AE76B")!,
        name: "Muscat Rose à Petits Grains",
        description: """

        """,
        color: .pink,
        synonyms: [
        ]
    )

    static let `9EEE9160-C4BD-4F65-BDD2-0EFFF8808711` = DefaultGrapeVariety(
        id: UUID(uuidString: "9EEE9160-C4BD-4F65-BDD2-0EFFF8808711")!,
        name: "Négrette",
        description: """
        Cépage noir du Sud-Ouest cultivé au nord de Toulouse, donnant des vins colorés et aromatiques, dont le fruité s'accompagne de notes caractéristiques de violette et de réglisse. C'est le cépage principal de l'AOC fronton. Il y est vinifié seul ou assemblé à une ou plusieurs des variétés suivantes : syrah, côt, cabernets, fer servadou (et accessoirement gamay et cinsault). Il entre aussi dans l'encépagement du lavilledieu, produit dans le même secteur, ainsi que dans celui des fiefs vendéens.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `512551E3-FC89-44AD-A5F9-A70F874D7D2C` = DefaultGrapeVariety(
        id: UUID(uuidString: "512551E3-FC89-44AD-A5F9-A70F874D7D2C")!,
        name: "Nielluccio",
        description: """
        Synonyme de Niellucciu : cépage noir très planté en Italie où, sous le nom de sangiovese, il participe à la notoriété du chianti, du brunello di Montalcino et du vino nobile di Montepulciano. Il est également cultivé en Corse pour la production de rouges et de rosés. C'est le cépage principal (90 % au moins) de l'AOC patrimonio. Dans les AOC vins-de-corse et ajaccio, il est assemblé à d'autres cépages insulaires comme le sciaccarello ou méridionaux comme le grenache. Colorés, chaleureux et tanniques, ses vins rouges supportent bien la garde.
        """,
        color: .black,
        synonyms: [
            "Niellucciu", "Sangiovese"
        ]
    )

    static let `EEC50F6A-348E-4FF7-95E2-7D3BAB084F66` = DefaultGrapeVariety(
        id: UUID(uuidString: "EEC50F6A-348E-4FF7-95E2-7D3BAB084F66")!,
        name: "Noah",
        description: """
        Hybride blanc américain qui produit un vin désagréable aux arômes foxés. Sa culture est aujourd'hui interdite en France.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `AEFC86E8-1F8D-43DB-AC84-A43C69FFC596` = DefaultGrapeVariety(
        id: UUID(uuidString: "AEFC86E8-1F8D-43DB-AC84-A43C69FFC596")!,
        name: "Merlot",
        description: """
        ## Un cépage typique du bordelais\n\nOriginaire de Bordeaux, le merlot blanc a conquis d'autres régions françaises. Désormais, il se cultive dans le Sud et le Sud-Ouest, dans le Languedoc-Roussillon, en Provence et en Corse, et dans les régions du Rhône, de la Loire, de la Savoie Bugey, mais aussi de Cognac et d'Armagnac. Bien que productif, celui qu'on appelle aussi merlau blanc est&nbsp;de moins en moins cultivé. Ses vieilles vignes ne sont pas replantées. Aujourd'hui, sa production ne couvre plus que&nbsp;176&nbsp;hectares au total.\n\n## Assemblages et appellations\n\nLe merlot blanc est utilisé en tant que cépage principal du pineau des Charentes, un vin liquoreux et doux d'appellation d'origine contrôlée et protégée. Il produit également plusieurs IGP du vignoble bordelais, comme le vin de vendanges tardives périgord vin de Domme blanc, et les vins tranquilles atlantiques blancs et périgords blancs. En&nbsp;tant que cépage accessoire, il donne lieu à&nbsp;plusieurs vins tranquilles secs (comme le bordeaux blanc, l'entre-deux-mers et le graves de Vayres),&nbsp;moelleux (comme le crémant de Bordeaux), ou doux (comme le bordeaux supérieur blanc).\n\n## Un raisin juteux au&nbsp;nectar doux\n\nLe merlot blanc est facilement reconnaissable grâce à ses baies juteuses vertes, qui&nbsp;virent au jaune doré lorsqu'elles sont mûres. Ce cépage bordelais, qui arrive à maturité 12&nbsp;jours après le&nbsp;chasselas, produit des vins à faible teneur en alcool. Ses vignes craignent la&nbsp;pourriture grise et l'excès de sécheresse. Ses feuilles adultes possèdent cinq lobes et des dents étroites.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `13B9617D-25F2-4AC1-B451-B37B8B32B7B7` = DefaultGrapeVariety(
        id: UUID(uuidString: "13B9617D-25F2-4AC1-B451-B37B8B32B7B7")!,
        name: "Ondenc",
        description: """
        Cépage blanc du Sud-Ouest devenu assez rare. Rarement vinifié seul, il fait partie de l'encépagement du gaillac et d'autres appellations du Sud-Ouest (bergerac, côtes-de-duras, montravel, monbazillac).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `83999821-F664-4676-9B39-3DA2709AE9FC` = DefaultGrapeVariety(
        id: UUID(uuidString: "83999821-F664-4676-9B39-3DA2709AE9FC")!,
        name: "Melon de Bourgogne",
        description: """
        ## Les origines du cépage melon de Bourgogne\n\nIssu de la famille des noiriens, le cépage melon de Bourgogne&nbsp;provient d’un croisement entre le gouais blanc et le pinot. Il s’agit d’abord d’un cépage bourguignon avant qu'il ne s’étende plus vastement sur les coteaux de la Loire. Aujourd’hui, ce vignoble représente 11&nbsp;000&nbsp;hectares en France, mais il est aussi cultivé outre-Rhin et outre-Atlantique. Il est en effet très présent en Californie sous un autre nom&nbsp;: pinot blanc. Il faut dire que ce cépage multiplie les dénominations&nbsp;: melon, bourguignon blanc, grosse Sainte-Marie, petit muscadet&hellip;## Les utilisations du melon de Bourgogne\n\nDonnant un vin blanc agréable à la faveur notamment d’une acidité maîtrisée, le melon de Bourgogne constitue le cépage unique de l’AOC muscadet. Comme un rappel de ses origines, il domine les AOC coteaux bourguignons blancs et crémant de Bourgogne blanc. Il est aussi présent dans le mâcon blanc. D’autres vins IGP de la Loire utilisent majoritairement le melon B. Plus étonnant, de nombreux vins rosés et rouges AOC du Beaujolais intègrent ce cépage. Et il figure également dans la composition d’un étonnant AOC bourgogne mousseux en rouge.\n\n## Les autres particularismes du melon de Bourgogne\n\nLes arômes floraux du cépage melon de Bourgogne se distinguent intensément. D’ailleurs, sa palette aromatique est renforcée par un élevage sur lies dont il fait régulièrement l’objet. Ce procédé échappant à la phase de séparation des dépôts jaunâtres de fond de tonneau donne plus de rondeur aux vins.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `862D4E1B-3C92-485E-9509-B6557ABAA224` = DefaultGrapeVariety(
        id: UUID(uuidString: "862D4E1B-3C92-485E-9509-B6557ABAA224")!,
        name: "Meslier Saint-Francois",
        description: """
        ## Originaire du Gâtinais et de l'Atlantique\n\nPlanté initialement au sud du Bassin parisien, le meslier Saint-François&nbsp;est un cépage blanc&nbsp;de moins en moins cultivé. Ce croisement&nbsp;entre le chenin et le gouais blanc est essentiellement planté sur le littoral atlantique et dans le Gâtinais,&nbsp;entre la Seine et la Loire. Il se retrouve sur&nbsp;certains coteaux du Sud-Ouest, du Rhône, de Bordeaux, mais aussi&nbsp;dans le Sud-Est, en Provence et en Corse. On le retrouve sous de nombreux autres noms comme le blayais, la chalosse, le gros meslier ou encore le pot de vin.\n\n## AOP et IGP\n\nEn tant que cépage principal, le meslier Saint-François produit le pineau des Charentes blanc, un vin de liqueur doux d'appellation d'origine contrôlée. Il donne vie aux vins tranquilles atlantiques blancs et périgords blancs et au vin de vendanges tardives périgord vin de Domme. Il entre dans la production de certains vins blancs d'IGP comme le coteaux-des-baronnie, le vaucluse, le maures, le mont-caume, le landes, le gers et le hautes-alpes.\n\n## Fraîcheur et légèreté\n\nFertile,&nbsp;ce cépage blanc de&nbsp;maturité première époque tardive est sensible à&nbsp;l'oïdium et aux gelées tardives. En revanche, il est robuste et résiste au&nbsp;mildiou, à la&nbsp;pourriture grise&nbsp;et au&nbsp;black rot. Ses grappes, de taille moyenne, possèdent un raisin blanc&nbsp;voire doré, à la chair&nbsp;juteuse et pulpeuse. Ce&nbsp;cépage est réputé pour sa faible teneur en alcool. Après distillation, il est également préconisé pour la production d'eaux-de-vie comme l'armagnac et le cognac.&nbsp;
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `D4271EB0-8150-4AB3-AB4D-A2FDAEA8FF23` = DefaultGrapeVariety(
        id: UUID(uuidString: "D4271EB0-8150-4AB3-AB4D-A2FDAEA8FF23")!,
        name: "Mondeuse",
        description: """
        ## Un cépage&nbsp;issu du vignoble&nbsp;savoyard&nbsp;\n\nCépage le plus&nbsp;productif de la Savoie jusqu'à la fin du XIXe&nbsp;siècle, la mondeuse a longtemps fait partie du vignoble auvergnat, aux alentours de Vichy, avant de disparaître complètement. Aujourd'hui, ce cépage noir se retrouve en Italie, en Suisse&nbsp;et&nbsp;en&nbsp;Yougoslavie,&nbsp;et bien&nbsp;au-delà des frontières européennes&nbsp;: on le cultive aussi en&nbsp;Californie, en&nbsp;Argentine, et en&nbsp;Australie.\n\n## Des vins racés et aromatiques\n\nLa mondeuse produit des vins de caractère, qui délivrent des&nbsp;notes acides, voire&nbsp;âpres, avec beaucoup de tannin. En bouche, ce cépage apporte des arômes truffés, poivrés et fruités. On retrouve facilement le parfum typique du pruneau, de la griotte, du cassis, de la figue, de la framboise, voire même de la si particulière violette. Celui que&nbsp;l'on surnomme également&nbsp;persaigne, mandouze, tournarin ou gros plant, est utilisé comme cépage principal de nombreuses AOC&nbsp;: le bugey montagnieu mousseux ou pétillant, le bugey rouge,&nbsp;et les&nbsp;vins de Savoie arbin, chautagne, chignin, jongieux et saint-jean-de-la-porte.\n\n## Un cépage exigeant&nbsp;qui craint la sécheresse\n\nReconnaissable grâce à son port couché, la mondeuse possède une&nbsp;chair juteuse et sucrée. La couleur de ses baies, qui ont&nbsp;une&nbsp;peau assez fine et résistante,&nbsp;va du violet foncé au noir. Ses grappes sont de taille moyenne et de forme pyramidale. La mondeuse, qui produit des vins racés, est de maturité deuxième époque tardive. Apte au vieillissement, ce cépage craint les acariens, le mildiou,&nbsp;l'oïdium, la chlorose et la sécheresse.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `0B6DD0F2-392A-4E85-B4B9-230991990369` = DefaultGrapeVariety(
        id: UUID(uuidString: "0B6DD0F2-392A-4E85-B4B9-230991990369")!,
        name: "Petit Manseng",
        description: """
        Cépage blanc cultivé dans les Pyrénées-Atlantiques, où il fait notamment la renommée des jurançon moelleux, assemblé ou non avec d'autres cépages locaux comme le gros manseng et le courbu. Les vins, même moelleux, présentent une pointe d'acidité agréable et le cépage apporte de belles notes de fruits mûrs (pêche, agrumes), de fruits exotiques et d'épices. Le petit manseng entre aussi dans l'encépagement d'autres AOC du piémont pyrénéen (béarn, irouléguy, pacherenc-du-vic-bilh, saint-mont).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `A20F5DA2-3895-4FC9-A56C-E1B521049C7D` = DefaultGrapeVariety(
        id: UUID(uuidString: "A20F5DA2-3895-4FC9-A56C-E1B521049C7D")!,
        name: "Petit Meslier",
        description: """
        Cépage blanc de Champagne dont les vins, nerveux et fruités, prennent facilement la mousse. Il est devenu confidentiel.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `5B22EB3C-7B29-4893-959D-0E012D7B44D7` = DefaultGrapeVariety(
        id: UUID(uuidString: "5B22EB3C-7B29-4893-959D-0E012D7B44D7")!,
        name: "Merlot",
        description: """
        ## Aux origines du merlot\n\nLe merlot est un cépage ancien dont les origines ne sont pas tout à fait certaines. Il viendrait du vignoble de Libourne dans le Bordelais et son nom a peut-être pour référence le merle dont la couleur noire est celle du cépage. C’est au XVIIIe&nbsp;siècle que le cépage est réellement identifié et la maladie de la vigne phylloxera va permettre son essor dans le vignoble français. Il va même devenir le premier cépage rouge dans le monde jusque dans les années&nbsp;2010 avec près de 250&nbsp;000&nbsp;hectares cultivés.\n\n## Merlot&nbsp;: le cépage phare du Bordelais\n\nCe cépage noir est depuis plusieurs décennies majoritaire dans le fameux vignoble de Bordeaux. Dans sa région d’origine, il représente 75&nbsp;% de la surface plantée. C’est donc tout naturellement qu’on le retrouve comme cépage principal de nombreux vins rouges et rosés AOC de la région bordelaise&nbsp;: fronsac, blaye, côtes-de-bordeaux, graves, haut-médoc, lalande-de-pomerol, lussac-saint-émilion, pauillac, saint-estèphe, pessac-léognan&hellip; Mais le merlot domine également de nombreuses AOC du Sud-Ouest, du Languedoc-Roussillon ainsi que le pineau des Charentes blanc et rosé et des IGP à l’image du vin gris sable-de-camargue.\n\n## Merlot&nbsp;: un cépage devenu international\n\nAssez facile à élever et donnant des vins ronds, il s’est exporté partout dans le monde. En Europe, il a conquis l’Italie et les pays de l’Est. Il est présent sur tous les continents puisqu’on le cultive aussi bien aux États-Unis qu’en Afrique du Sud, en Argentine, en Chine et en Australie.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `A34019CA-3857-4843-B23D-12D1C9A56A4E` = DefaultGrapeVariety(
        id: UUID(uuidString: "A34019CA-3857-4843-B23D-12D1C9A56A4E")!,
        name: "Picardan",
        description: """
        Cépage blanc très rare qui fait partie de l'encépagement du châteauneuf-du-pape.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `1175A736-0092-4326-9DA6-E8CE533D3286` = DefaultGrapeVariety(
        id: UUID(uuidString: "1175A736-0092-4326-9DA6-E8CE533D3286")!,
        name: "Muscardin",
        description: """
        ## Le muscardin, un cépage originaire du Vaucluse\n\nRendez-vous dans la vallée du Rhône, et plus particulièrement dans le Vaucluse, pour découvrir les origines du muscardin. Également appelé muscadin et muscardin noir, ce cépage est peu répandu et bourgeonne tardivement. C’est une variété de raisin de cuve qui ressemble à la mondeuse noire, un cépage originaire de Savoie.\n\n## Quels vins AOC produit-on avec du muscardin&nbsp;?\n\nCe cépage noir n’est jamais vinifié seul&nbsp;: il s’associe avec d’autres cépages (généralement le grenache, la syrah et le mourvèdre) pour produire des vins d’Appellation d’origine contrôlée (AOC) comme le châteauneuf-du-pape, le gigondas, le vacqueyras ou encore le côtes-du-rhône. Le muscardin délivre des notes florales et il est particulièrement apprécié pour sa fraîcheur.\n\n## Un cépage noir de cuve aux grandes feuilles\n\nLes feuilles du muscardin sont bien spécifiques à ce cépage&nbsp;: les feuilles jeunes sont vertes avec des taches bronzées. Quand elles sont adultes, elles sont grandes et trilobées. Leur spécificité&nbsp;? Elles prennent une couleur rougeâtre à l’automne. Ses grappes et ses baies (ovoïdes et noires-bleutées) sont de taille moyenne. Et le goût, dans tout ça&nbsp;? Le muscardin permet d’obtenir des vins fins, acides, peu alcoolisés et peu colorés. Enfin, ce cépage est peu sensible à la pourriture grise mais il craint l’esca.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `41E0CA72-9950-440A-A0B7-A744A602A347` = DefaultGrapeVariety(
        id: UUID(uuidString: "41E0CA72-9950-440A-A0B7-A744A602A347")!,
        name: "Mourvèdre",
        description: """
        ## Direction le sud de la France pour trouver des cépages de mourvèdre\n\nLe mourvèdre est un cépage qui est apparu en Espagne, dans les régions de Valence, Almansa ou encore Jumilla&nbsp;: dans ce pays, il porte le nom de «&nbsp;monastrell&nbsp;». Ce cépage se plaît aussi dans le sud de la France, et plus précisément dans le Languedoc-Roussillon et en Provence. C’est autour de Bandol qu’il exprime pleinement son potentiel. À savoir&nbsp;: le mourvèdre est également cultivé en Australie&nbsp;! On dit que ce cépage a besoin de «&nbsp;voir la mer&nbsp;» pour s’épanouir.\n\n## Utilisation du mourvèdre&nbsp;: avec quels autres cépages peut-il être assemblé&nbsp;?\n\nCe cépage noir est connu pour sa forte personnalité&nbsp;: il donne des vins colorés, corsés et structurés. Il délivre des notes de poivre, de fruits noirs et de végétaux (garrigue et laurier). Le mourvèdre peut être assemblé avec des cépages comme le carignan, le grenache, la syrah et le cinsault. Il fait partie de l’encépagement de vins AOC comme le côtes-de-provence, le coteaux-varois, le palette, etc.\n\n## Identifier le mourvèdre&nbsp;: comment procéder&nbsp;?\n\nLes jeunes feuilles sont bronzées, les grappes sont de moyenne à grande taille et les baies sont de forme sphérique. Leur chair est fondante&nbsp;: elle est caractérisée par un goût âpre. C’est un cépage qui est sensible aux acariens, à la pourriture grise, à l’esca ou encore aux cicadelles. Le froid hivernal peut causer des dégâts sur ses souches.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `0251BE6D-13E0-49A8-8762-6C60BF29FF43` = DefaultGrapeVariety(
        id: UUID(uuidString: "0251BE6D-13E0-49A8-8762-6C60BF29FF43")!,
        name: "Muscat de Hambourg",
        description: """
        ## Où le muscat de Hambourg est-il né ?\n\nLe muscat de Hambourg serait issu d’un croisement entre le muscat d’Alexandrie et le frankenthal. C’est un cépage noir qui est planté dans le sud de la France, mais pas seulement. Il est également cultivé en Grèce, en Roumanie, en Uruguay, au Portugal, en Italie, en Australie ou encore en Afrique du Sud. Ce cépage est utilisé dans l’élaboration du vin mais on retrouve aussi ses grappes sur nos tables&nbsp;!## Quels vins produire avec le muscat de Hambourg&nbsp;?\n\nLe muscat de Hambourg arrive à maturité 15 à 18&nbsp;jours après le chasselas. C’est le cépage principal de plusieurs vins portant le label «&nbsp;Indication géographique protégée&nbsp;» (IGP), comme l’atlantique, le pays-d’oc, le périgord, etc. Il sert aussi à produire le muscat du Ventoux, un vin d’appellation d’origine contrôlée (AOC) dont les raisins poussent sur les pentes du mont Ventoux, dans le Vaucluse, depuis le XIXe&nbsp;siècle.\n\n## Quelles sont les particularités de ce cépage ancien&nbsp;?\n\nLe muscat de Hambourg est caractérisé par de jeunes feuilles aranéeuses ; les feuilles adultes sont composées de cinq lobes. Les grappes de ce cépage sont grandes et ses baies noires bleutées sont de forme elliptique. La chair du muscat de Hambourg est juteuse et délivre une saveur muscatée agréable en bouche. Quid des maladies&nbsp;? Ce cépage est sensible à la pourriture grise et craint les gelées d’hiver.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `26057DAF-416F-4B1E-9257-7D00A09BFA19` = DefaultGrapeVariety(
        id: UUID(uuidString: "26057DAF-416F-4B1E-9257-7D00A09BFA19")!,
        name: "Montils",
        description: """
        ## De la Charente-Maritime jusqu'en Océanie\n\nVenu de Charente-Maritime, le montils est parti à la conquête des vignobles étrangers. Surnommé ancerot en Australie, ce cépage blanc produit de&nbsp;grandes quantités de vin, bien qu'il soit peu robuste. En France, il se cultive majoritairement sur les coteaux situés au sud de la ville de Nantes.\n\n## Pour produire&nbsp;le cognac et le pineau des Charentes\n\nÉgalement surnommé chalosse ou ancarot, le montils blanc s'apparente à la folle blanche, car ces cépages font tous deux partie de la famille des folloïdes. Il produit des vins d'appellation Cognac et entre dans la composition du pineau des Charentes, un&nbsp;vin blanc doux et liquoreux d'AOC et d'AOP. Cépage principal&nbsp;de l'atlantique blanc – vin blanc tranquille d'Indication géographique protégée (IGP) –, il est également utilisé en tant que cépage accessoire du gros-plant-du-pays-nantais, vin tranquille et sec d'appellation d'origine contrôlée du vignoble ligérien. Distillé,&nbsp;le montils blanc&nbsp;sert également à la production d'eaux-de-vie.\n\n## Un vin acide apte à la distillation&nbsp;\n\nCe cépage possède des grappes&nbsp;de forme cylindrique et&nbsp;de taille moyenne. Leur feuillage adulte qui est vert foncé se compose de cinq lobes. Son bourgeonnement cotonneux laisse place à des&nbsp;baies bien rondes. Son raisin est blanc, jaune, voire légèrement vert, et son jus particulièrement acide. Très sensible à la pourriture grise, le montils est sensible aux gelées tardives, qui peuvent survenir au printemps. De maturité deuxième époque, il requiert une taille modérée et un débourrement précoce.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `D0537CC1-B0A9-46D7-B2A5-46B3D152567B` = DefaultGrapeVariety(
        id: UUID(uuidString: "D0537CC1-B0A9-46D7-B2A5-46B3D152567B")!,
        name: "Oberlin",
        description: """
        ## D’où provient l’oberlin&nbsp;?\n\nCe cépage noir est le résultat de l’hybridation entre le gamay et le millardet. C’est dans le nord-est de la France qu’est né l’oberlin, un hybride producteur&nbsp;: aujourd’hui, on trouve ses plantations de l’Alsace à la Bourgogne, en Pays de la Loire et dans le Centre. Ce cépage n’est cependant que peu répandu.\n\n## Dans quels vins trouve-t-on l’oberlin&nbsp;?\n\nLes vins qui contiennent de l’oberlin sont colorés et alcooliques. Ils sont appréciés à l’apéritif et caractérisés par une robe violacée et un goût résineux. Concrètement, ce cépage est utilisé dans des vins tranquilles qui portent le label «&nbsp;Indication d’origine protégée&nbsp;» (IGP) comme l’alpes-maritimes, l’ardèche, le comtés-rhodaniens, le drôme, le coteaux-des-baronnies, le var, le mont-caume, etc.\n\n## Quelles sont les spécificités de l’oberlin&nbsp;?\n\nRésistant et fertile, ce cépage craint peu les maladies comme le mildiou et l’oïdium. Il est reconnaissable grâce à ses grappes de petite à moyenne taille et à ses baies de forme sphérique à légèrement elliptique. Ses jeunes feuilles ont une couleur verte tandis que les&nbsp;feuilles adultes sont cunéiformes. Elles possèdent cinq lobes et un sinus pétiolaire en U. Leur face intérieure est identifiable grâce à sa densité faible à moyenne de poils dressés. Les autres particularités de l’oberlin sont un débourrement et une maturité précoce.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `304C4E2D-905C-43F1-9BC8-EB1C933F1D66` = DefaultGrapeVariety(
        id: UUID(uuidString: "304C4E2D-905C-43F1-9BC8-EB1C933F1D66")!,
        name: "Pinot",
        description: """
        ## Le pinot noir, un cépage très ancien\n\nLe pinot noir, cépage bénéficiant d'une belle renommée, est connu de très longue date en Bourgogne où il aurait pu être apporté par les Romains dès l'Antiquité. C'est un cépage important à l'origine de nombreux autres cépages emblématiques, tels que le chardonnay ou le gamay. Il est principalement cultivé en France, notamment en Bourgogne, en Alsace et en Champagne, et de façon plus confidentielle à l'étranger, en Allemagne et en Suisse par exemple.\n\n## Un cépage difficile à cultiver pour des vins puissants\n\nMalgré sa présence importante dans plusieurs régions françaises, le pinot noir est un cépage assez capricieux et complexe à cultiver, car sensible aux maladies et relativement fragile. Son vin offrira des caractéristiques assez différentes selon son lieu de culture et son terroir. On le retrouve notamment dans les crémants de Bourgogne, le champagne, ou encore dans des vins rouges fins, légers et fruités.\n\n## Une vaste palette aromatique\n\nSelon les zones de culture, le cépage de pinot noir offre une palette d'expressions très variée, avec des arômes de fruits rouges et de pivoine qui pourront évoluer sur des notes de sous-bois et de cuir et parfois même animales. Il donne des vins aux tannins délicats, plutôt ronds, qui s'assouplissent en vieillissant, caractérisés par une belle robe de couleur rubis brillant. La diversité d'arômes des vins issus du pinot noir en fait des breuvages élégants, des vins rouges d'une grande finesse accessibles aux palais les plus sensibles.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `6593A433-78E0-4D14-BBA3-9E07F6423F7D` = DefaultGrapeVariety(
        id: UUID(uuidString: "6593A433-78E0-4D14-BBA3-9E07F6423F7D")!,
        name: "Pascal",
        description: """
        ## Un cépage rustique et provençal\n\nLe pascal est un cépage blanc originaire de Provence et qui est peu répandu. Également appelé brun blanc, jacobin violet, plant pascolu ou encore plant Pascal, il est cultivé dans la vallée du Rhône et apprécie les coteaux arides, secs et bien exposés. C’est un cépage qui produit une variété de raisin de cuve&nbsp;: on ne le retrouve donc pas à déguster sur nos tables.\n\n## Dans quels vins trouver le pascal blanc&nbsp;?\n\nLe pascal blanc est notamment présent dans l’assemblage du côtes-du-ventoux et du vin de Cassis, deux appellations d’origine contrôlée (AOC). Ce cépage peut aussi être utilisé comme cépage principal dans l’assemblage de plusieurs vins comme l’atlantique blanc, le périgord blanc ou encore le périgord vin de Domme blanc. Il entre également dans la composition de vins tranquilles portant une « Indication géographique protégée&nbsp;» (IGP) comme l’ardèche, le comtés-rhodaniens, le coteaux-des-baronnies, le drôme, le gers, le hautes-alpes, le vaucluse, etc.\n\n## Quelles sont les caractéristiques du pascal blanc&nbsp;?\n\nCe cépage est caractérisé par un débourrement tardif. Il est identifiable par des grappes de moyenne à grande taille et des baies sphériques. Elles possèdent une peau épaisse et résistante qui abrite une chair assez sucrée et peu relevée. Enfin, ce cépage est sensible à la pourriture grise et à l’oïdium.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `3EA9D2EB-6569-46E1-BB0F-AEA322B4A3DB` = DefaultGrapeVariety(
        id: UUID(uuidString: "3EA9D2EB-6569-46E1-BB0F-AEA322B4A3DB")!,
        name: "Persan",
        description: """
        ## Une origine savoyarde\n\nLe persan noir a été cultivé pour la première fois en Savoie, autour de Saint-Jean-de-Maurienne. Il a un certain temps été majoritairement cultivé dans la vallée de l'Arc, jusque dans la Drôme. Aujourd'hui plutôt confidentielle, sa culture peut toutefois se retrouver entre la vallée du Grésivaudan et la Savoie. La zone de la combe de Savoie accueille en effet son retour progressif depuis une dizaine d'années environ.\n\n## Un cépage proche de l'étraire de l'Aduï\n\nLe persan noir est souvent confondu à tort avec un autre cépage de la région, l'étraire de l'Aduï. Également appelé becquet, pressan, petit étraire ou encore siranèze pointue, ce cépage se distingue par des baies à la peau fine et à la pulpe juteuse, ainsi que par ses feuilles qui rougissent l'automne venu. C'est un cépage vigoureux et productif, appréciant les terrains secs ainsi que les expositions ensoleillées.\n\n## Un vin de qualité apte à vieillir\n\nLe cépage persan noir, aussi appelé prinssan, pressan, pousse de chèvre ou encore petit bequet, est aujourd'hui utilisé en cépage principal dans quelques vins de Bordeaux, rouges et rosés, mais également en assemblage dans plusieurs vins de Savoie AOC du Bugey. S'il offre des vins riches en alcool, colorés et tanniques, le persan noir donne des vins de grande qualité une fois conservés, avec des arômes notables de fruits rouges tels que la framboise et la violette. Très apte à vieillir, le vin issu du persan noir donne le meilleur de ses capacités après 12 à 15&nbsp;ans.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `E1641C39-AE49-4CD0-9A21-C814F7552D55` = DefaultGrapeVariety(
        id: UUID(uuidString: "E1641C39-AE49-4CD0-9A21-C814F7552D55")!,
        name: "Pinot Blanc",
        description: """
        ## Une mutation du pinot noir provenant de Bourgogne\n\nLe pinot blanc, également appelé clevner, est une mutation du cépage pinot noir originaire également de Bourgogne. Trois variations de ce cépage peuvent être retrouvées aujourd'hui et sa culture est en expansion depuis plusieurs années, atteignant plus de 1&nbsp;500&nbsp;hectares en France. Il est notamment très exploité en Italie avec plus de 7&nbsp;000&nbsp;hectares, mais aussi en Allemagne ou encore en Afrique du Sud.\n\n## Un cépage vigoureux très cultivé en Alsace\n\nLe pinot noir est un cépage appréciant les climats continentaux qui peut résister aux gels d'hiver et à la chaleur des mois d'été, et qui produit de petites baies à la pulpe fondante. Il participe aux vins vendus sous les appellations Alsace pinot blanc ou clevner, ainsi que crémant d'Alsace, caractérisés par une souplesse en bouche et un certain équilibre. Le pinot blanc est par ailleurs classé en cépage d'appoint en DOC dans de nombreuses provinces d'Italie.\n\n## Des vins fruités et équilibrés\n\nLes vins issus du pinot blanc se distinguent par un bel équilibre entre alcool et acidité, et une palette discrètement fruitée avec quelques notes épicées. Sa structure en bouche est plutôt légère, et les arômes de fruits blancs (pomme et pêche) sont subtils et frais. Le pinot blanc d'Alsace est un vin conseillé pour la dégustation de poissons et de viandes blanches. Sa couleur jaune pâle offre de jolis reflets verts à la lumière.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `A37D2815-1373-47F8-98F0-17A2E0570BDB` = DefaultGrapeVariety(
        id: UUID(uuidString: "A37D2815-1373-47F8-98F0-17A2E0570BDB")!,
        name: "Ploussard",
        description: """
        Cépage noir cultivé dans le Jura et le Bugey. Même vinifié en rouge, il fournit un vin clairet presque rosé, peu tannique, frais et fruité. Seul ou associé au trousseau et au pinot noir, il constitue les vins arbois et les côtes-du-jura rouges. Vinifié en blanc dans l'appellation l'étoile (avec le gamay et le savagnin), il apporte de la rondeur en bouche et une finesse aromatique. Il peut aussi entrer dans la composition des vins de paille et du macvin de la même région.
        """,
        color: .black,
        synonyms: [
            "Poulsard"
        ]
    )

    static let `F34090DF-6F91-447D-B9D2-CEC763E5C148` = DefaultGrapeVariety(
        id: UUID(uuidString: "F34090DF-6F91-447D-B9D2-CEC763E5C148")!,
        name: "Pinot Gris",
        description: """
        ## Une variation du pinot noir\n\nLe pinot gris est un cépage probablement originaire de Bourgogne, tout comme le pinot noir dont il est une variation. Il est notamment cultivé en Alsace au moins depuis le Moyen-Âge. On le retrouve sous de nombreux noms&nbsp;: anciennement appelé tokay pinot gris, il est aussi connu sous le nom de pinot beurot en Bourgogne. C'est un cépage noble qui est de nos jours surtout produit en Allemagne avec 5&nbsp;000&nbsp;hectares environ, mais également en Suisse, en Alsace ou dans la vallée de la Loire.\n\n## Un cépage autorisé dans les grands crus d'Alsace\n\nLe pinot gris donne des vins fins de grande qualité, aussi bien dans la vallée de la Loire pour les appellations Coteaux d'Ancenis, qu'en Alsace où il est autorisé dans les appellations grands crus. Les vins issus des vendanges tardives sont particulièrement qualitatifs, le pinot gris se prêtant également à la sélection de grains nobles selon les années. C'est un cépage qui résiste aux froids d'hiver et aux gelées printanières, bien adapté au climat continental et appréciant les terres calcaires.
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `7D686B45-B6C2-44B9-8C01-73AB63A672DC` = DefaultGrapeVariety(
        id: UUID(uuidString: "7D686B45-B6C2-44B9-8C01-73AB63A672DC")!,
        name: "Petit Brun",
        description: """
        ## Une origine italienne ou provençale\n\nLe petit brun serait originaire, selon les sources, soit de Provence, soit d'Italie où il est appelé la brunetta nera. C'est un cépage à la culture très confidentielle exclusivement située en Provence. Mais malgré sa raréfaction il est renommé pour son apport intéressant dans les vins locaux. Seulement un hectare environ de petit brun serait cultivé actuellement.\n\n## Un cépage accessoire pour l'appellation Palette\n\nLe petit brun est actuellement cultivé en Provence, notamment dans les Bouches-du-Rhône, dans le cadre de l'encépagement limité pour la fabrication des vins de l'appellation Palette, une AOC enregistrée en 1948 à proximité du hameau Palette. Cultivé au pied de la montagne Sainte-Victoire dans un cadre ensoleillé et sec qui participe à son épanouissement, il participe à l'élaboration de vins rouges et rosés. Cette AOC Palette est l'une des plus anciennes de Provence.\n\n## Le petit brun, pour un vin tannique et rouge foncé\n\nLe cépage petit brun donne un vin à la couleur caractéristique rouge foncé, particulièrement tannique, qui apporte des notes aromatiques très intéressantes à l'élaboration de vins rouges, notamment des vins du Château Crémade. Il offre un vin aux notes de fleurs blanches et aux arômes de sous-bois, apportant une subtilité très appréciable aux breuvages dans lesquels il est assemblé. C'est un cépage certes accessoire dans l'élaboration des vins, notamment de l'AOC Palette, mais toutefois important pour son caractère particulier.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E` = DefaultGrapeVariety(
        id: UUID(uuidString: "16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E")!,
        name: "Petit Verdot",
        description: """
        ## Un cépage originaire du Sud-Ouest\n\nLe petit verdot est un cépage probablement originaire des Pyrénées ou du Béarn, qui fait aujourd'hui partie des trois grands cépages du Médoc, où il est replanté depuis plusieurs décennies pour ses caractéristiques particulières. C'est de nos jours un élément important dans l'assemblage des grands châteaux du Médoc, mais également un cépage cultivé aux quatre coins du monde, notamment en Espagne, en Californie, au Chili ou encore au Portugal.\n\n## Un vin d'assemblage apprécié\n\nLe petit verdot n'est cultivé qu'à hauteur de quelques centaines d'hectares en France actuellement, principalement dans le Médoc. S'il n'a pas la stature internationale d'un cabernet sauvignon, c'est pourtant un élément essentiel dans l'assemblage des plus grands crus locaux, permettant d'apporter une touche aromatique et épicée discrète. Il fait en effet partie de l'encépagement de grands crus à hauteur de 4 à 10&nbsp;%, mais il reste difficile à cultiver, avec une irrégularité qui donne un rendement très aléatoire.\n\n## Le petit verdot, une touche de complexité\n\nL'encépagement du petit verdot dans les plus grands vins du Médoc tient à ses caractéristiques spécifiques, apportant du volume en bouche, ainsi qu'une touche sucrée et de la couleur. Fortement tannique, le vin issu du petit verdot va s'arrondir en vieillissant, et offrir des notes aromatiques complexes et épicées, qui rappellent la syrah. On peut ici citer la réglisse ou le menthol, mais aussi les notes fruitées de la framboise et de la violette.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `97DD735D-A5C3-46C5-91A9-A0A6A0E191F9` = DefaultGrapeVariety(
        id: UUID(uuidString: "97DD735D-A5C3-46C5-91A9-A0A6A0E191F9")!,
        name: "Pineau D'Aunis",
        description: """
        ## Un cépage très ancien originaire de France\n\nLes origines du pineau d'Aunis sont encore mal connues, mais c'est un cépage particulièrement ancien dont les premières cultures en France remonteraient à l'Antiquité. Également appelé chenin noir, il a longtemps fait partie des assemblages des plus grandes variétés des vins de la vallée de la Loire. Cultivé actuellement à hauteur de 500&nbsp;hectares contre 1&nbsp;800 au milieu du XXe&nbsp;siècle, le pineau d'Aunis est notamment utilisé pour la production des coteaux-du-vendômois.\n\n## Un vin d'assemblage et de monocépage\n\nLe pineau d'Aunis revient en force ces dernières années après avoir été pourtant arraché il y a plusieurs décennies au profit de cépages considérés comme plus nobles. Il est aujourd'hui utilisé aussi bien pour des vins de Touraine gris ou rouges en assemblage, que pour des vins tranquilles et des crémants dans la vallée de la Loire. En monocépage, le pineau d'Aunis permet l'élaboration des coteaux-du-vendômois. En assemblage, il fait partie de vins rosés en Anjou notamment, mais aussi des vins rouges de Touraine.\n\n## Le pineau d'Aunis, pour un vin épicé et souple\n\nQu'il soit utilisé en assemblage, en cépage accessoire ou en monocépage, le pineau d'Aunis offre des arômes épicés, principalement de belles notes poivrées, tout en conservant une fraîcheur et une très agréable légèreté. C'est un cépage à gros rendements qui offre un vin à la robe claire et aux reflets argentés, dont la saveur très aromatique est appréciée, notamment en assemblage avec le cabernet franc.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `644C5932-01E6-461C-B5AD-543EE40C79B6` = DefaultGrapeVariety(
        id: UUID(uuidString: "644C5932-01E6-461C-B5AD-543EE40C79B6")!,
        name: "Piquepoul",
        description: """
        ## Un cépage&nbsp;originaire du Languedoc\n\nCe cépage gris qu'on retrouve aussi sous le nom de piquepoul rose est une mutation du piquepoul noir. Il ressemble morphologiquement au piquepoul blanc mais ses baies acquièrent une coloration grise lorsqu'elles arrivent à maturité. Il s'épanouit dans les terrains sablonneux, comme ceux du golfe du Lion, et aime la chaleur méditerranéenne. Le piquepoul gris doit être conduit en taille courte.&nbsp;## Un cépage recommandé pour les vins blancs\n\nIl est recommandé pour les vins blancs, et son acidité, comme celle de la variété noire, lui confère un bon potentiel de conservation. Il est autorisé en rouge dans la seule AOC Châteauneuf-du-Pape ; le reste des AOC et IGP qui peuvent l'utiliser en cépage principal sont des blancs (de l'Atlantique, du Périgord) ou des rosés (de Tavel). La multitude d'IGP –&nbsp;toutes du Sud ou de la vallée du Rhône –&nbsp;où il pourrait intervenir en tant que cépage accessoire, cache pourtant&nbsp;une autre réalité&nbsp;: ce cépage est&nbsp;en voie de disparition.&nbsp;## Un cépage sensible\n\nDepuis 1958, l'encépagement en piquepoul gris n'a pas dépassé les 50&nbsp;hectares. Il est tombé en 2018 à son niveau le plus bas&nbsp;: seuls 2,9&nbsp;hectares étaient mis en culture. Et, alors que le piquepoul blanc connaît un regain d'intérêt en Languedoc, les viticulteurs de cette région ne semblent toujours pas sensibles aux qualités du mutant gris. Les grappes de ce cépage sont grosses, alors que les fruits sont de taille moyenne. Le piquepoul gris est particulièrement sensible à la pourriture.
        """,
        color: .grey,
        synonyms: [
            "Picpoule"
        ]
    )

    static let `7A9CEF6E-D16B-4E39-BD91-C057A636C12C` = DefaultGrapeVariety(
        id: UUID(uuidString: "7A9CEF6E-D16B-4E39-BD91-C057A636C12C")!,
        name: "Piquepoul",
        description: """
        ## Un cépage méditerranéen\n\nLe piquepoul blanc, ou picapoll blanc, vient du Languedoc. Depuis l'Antiquité, ce cépage réservé à la cuve aime la Méditerranée,&nbsp;la chaleur&nbsp;et les sols&nbsp;plutôt sablonneux. Il a connu son heure de gloire dans sa région d'origine, avant de subir de plein fouet la crise du phylloxera. Utilisé dans la composition des vermouths, il pâtit ensuite du désamour du public pour les vins liquoreux dans les années&nbsp;1970. Pourtant, les vignerons du Languedoc redécouvrent le potentiel de ce cépage en vin sec.&nbsp;## Un regain du piquepoul blanc\n\nOn retrouve le piquepoul blanc autorisé en tant que cépage principal dans les mêmes appellations que son parent noir ou gris. Ainsi, les châteauneuf-du-pape ou les beaume-de-venise peuvent l'utiliser en blanc ou rouge, ou le tavel en rosé. La plupart des autres AOC, languedociennes ou périgourdines pour la plupart, l'utilisent en blanc. En cépage accessoire, ce sont surtout des AOC de la vallée du Rhône qui le privilégient. Le cépage blanc est de plus en plus cultivé&nbsp;: les surfaces mises en culture ont fait un bond de 30&nbsp;% ces dix dernières années.&nbsp;## Une dénomination&nbsp;tendance\n\nLes viticulteurs de la bordure de l'étang de Thau ont bien saisi le potentiel de ce cépage si bien adapté à leur terroir. Le picpoul de Pinet obtient sa propre appellation en 2013, et produit&nbsp;de plus en plus de bouteilles. Ce vin en monocépage, riche en arômes marins, connaît un succès&nbsp;fulgurant à l'étranger et notamment en Angleterre. Le piquepoul&nbsp;est indéniablement&nbsp;un cépage ancien tendance.
        """,
        color: .white,
        synonyms: [
            "Picpoule"
        ]
    )

    static let `80CB2A7F-D007-46AD-97D3-8CC9C82793A0` = DefaultGrapeVariety(
        id: UUID(uuidString: "80CB2A7F-D007-46AD-97D3-8CC9C82793A0")!,
        name: "Ribol",
        description: """
        ## Les origines du cépage ribol\n\nLe ribol est un cépage français, plus précisément originaire du Languedoc, essentiellement cultivé dans cette région et dans le vignoble bordelais. Il est issu d’un croisement entre l’olivette blanche et le cépage alphonse-lavallée lui-même cultivé sous serres en Angleterre. Ce croisement a été obtenu en 1958 et le ribol présente l’avantage d’avoir une chair abondante à la saveur agréable, ce qui fait de lui un raisin de table apprécié en plus de sa résistance au transport et de sa bonne conservation au froid.\n\n## Les utilisations du cépage noir ribol\n\nLe vignoble du cépage ribol est assez modeste. Aucun vin AOC ne recourt à ce cépage. Il est toutefois le cépage principal de plusieurs vins IGP issus du vignoble de Bordeaux. Il domine en effet l’atlantique rosé et l’atlantique rouge ainsi que le périgord rosé et le périgord rouge. Présent dans le Rhône, dans le Sud-Ouest, en Provence et dans les vignobles de Cognac, c’est surtout dans le Languedoc-Roussillon qu’il s’épanouit. Le ribol peut d’ailleurs être utilisé dans plusieurs IGP de cette région viticole&nbsp;: Aude, Côte Vermeille, Coteaux de Narbonne, Côtes Catalanes, Vallée du Paradis.\n\n## Les particularités du cépage ribol\n\nCe cépage est connu pour son débourrement tardif. Sa maturité survient à la troisième époque. C’est pourquoi il constitue le cépage principal du vin de vendanges tardives IGP Périgord&nbsp;vin de Domme en rosé et en rouge.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `725D4FFD-C4ED-4E76-933A-927D21D9D77E` = DefaultGrapeVariety(
        id: UUID(uuidString: "725D4FFD-C4ED-4E76-933A-927D21D9D77E")!,
        name: "Riesling",
        description: """
        ## Les origines lointaines et incertaines d’un grand cépage\n\nLe cépage blanc riesling est originaire de la vallée du Rhin et de la Moselle. Sa culture remonterait à l’époque des Romains, ce qui est probable puisqu’il a été révélé que ce cépage était issu d’un métissage à partir du gouais B lui-même extrait de Croatie par les Romains. En France, il est planté sur environ 4&nbsp;000&nbsp;hectares, dont plus de 3&nbsp;000 sur le vignoble alsacien&nbsp;: il représente 23&nbsp;% des vignes locales. Mais c’est de l’autre côté du Rhin qu’il est le plus cultivé. L’encépagement du riesling en Allemagne atteint 23&nbsp;800&nbsp;hectares. On retrouve le riesling sous de nombreux autres noms, comme le raisin du Rhin, le reno, la perle d'Alsace ou encore le petit rhin.\n\n## Un cépage quasiment réservé aux vins AOC Alsace grand cru\n\nC’est parce qu’il résiste aux hivers rigoureux du nord-est de la France et moins aux fortes chaleurs que le riesling s’est développé sur les bords du Rhin. Il constitue le cépage principal de toute une liste de vins blancs AOC secs ou doux, pour des vins tranquilles, des vins de vendanges tardives et des vins de sélection de grains nobles. Il domine également l’AOC Crémant d’Alsace et plusieurs IGP (Calvados blanc, Pays-d’Oc blanc).\n\n## Riesling&nbsp;: un cépage pour un grand éventail de vins\n\nLe riesling est un cépage qui permet aux viticulteurs de proposer aussi bien des vins secs et fruités à consommer à tout moment, que des vins de garde de plus de dix ans à déboucher pour de grandes occasions, que des vins doux et sucrés qui font la renommée de la production locale.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173` = DefaultGrapeVariety(
        id: UUID(uuidString: "EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173")!,
        name: "Piquepoul",
        description: """
        ## Un cépage discret\n\nLe piquepoul noir est présent en Languedoc depuis l'Antiquité. Il n'est donc pas étonnant que ce cépage ait muté en blanc, beaucoup plus cultivé à l'heure actuelle, et en gris, en voie de disparition. Le piquepoul noir était apprécié pour la fabrication des clairets de Bordeaux dont il ravivait les couleurs. Pourtant, il fut remplacé peu à peu par d'autres cépages teinturiers. Le XXe&nbsp;siècle lui est presque fatal et il ne se retrouve que dans quelques vins rouges de la région du Rhône.\n\n## Sauvé par une appellation du Rhône\n\nC'est l'AOC Châteauneuf-du-Pape qui continue d'employer du piquepoul noir avec les 17&nbsp;autres cépages autorisés à sa fabrication. D'autres AOC du Rhône (Beaumes de Venise, Tavel), de Bordeaux (Atlantique, Périgord) ou encore du Languedoc (Corbières, Coteaux de Peyriac) peuvent l'utiliser en cépage principal. Ces différentes dénominations ont la particularité d'allier des cépages locaux qui se font de plus en plus rares. Plus d'une soixantaine d'AOC sont autorisées à assembler le piquepoul N à leurs autres cépages.\n\n## Un cépage qui se mérite\n\nLe piquepoul noir – qu'on retrouve aussi sous les noms de picpouille, piquerette noire, languedocien ou encore picapouia – est exigent. Il est productif en taille courte et demande donc plus d'attention. Il est sensible à la pourriture grise et à l'oïdium. Ses baies de couleur bleutée sont attractives pour rehausser les couleurs, plus particulièrement des rosés, et offrent une bonne acidité et un potentiel de garde.&nbsp;
        """,
        color: .black,
        synonyms: [
            "Picpoul", "Picpoule"
        ]
    )

    static let `ACF466A5-42AB-409F-A03C-58B2359C7B01` = DefaultGrapeVariety(
        id: UUID(uuidString: "ACF466A5-42AB-409F-A03C-58B2359C7B01")!,
        name: "Sciaccarello",
        description: """
        Cépage noir cultivé en Corse donnant des vins peu colorés mais bien charpentés et fruités (groseille, cassis, mûre, framboise) qui s'apprécient plutôt jeunes. C'est l'une des variétés de l'AOC vin-de-corse et le principal cépage de l'AOC ajaccio.
        """,
        color: .black,
        synonyms: [
            "Sciaccarellu"
        ]
    )

    static let `16FF1C77-B54A-4953-9034-9BE18C420CC7` = DefaultGrapeVariety(
        id: UUID(uuidString: "16FF1C77-B54A-4953-9034-9BE18C420CC7")!,
        name: "Plantet",
        description: """
        ## Un hybride pour lutter contre le phylloxera\n\nAlors que le phylloxera ravage le vignoble français à la fin du XIXe&nbsp;siècle, les ingénieurs agronomes et les viticulteurs français mettent au point des hybrides résistants. Albert&nbsp;Seibel, en Ardèche,&nbsp;croise des&nbsp;plants américains aux&nbsp;plants traditionnels. Parmi les nombreux hybrides qu'il crée, le cépage 5455&nbsp;Seibel ou plantet noir est utilisé pour récupérer le vignoble français, notamment sur la façade atlantique.&nbsp;## Un cépage qui se raréfie\n\nÀ partir des années trente, les hybrides sont peu à peu délaissés. Jusqu'en 1958, près de 27&nbsp;000&nbsp;hectares de plantet N étaient encore mis en culture. Cette surface se réduit à la fin des années quatre-vingt&nbsp;au point de ne pas dépasser&nbsp;en 2018 les 800&nbsp;hectares. Moins d'une vingtaine d'IGP sont autorisées à l'utiliser, notamment dans la région du Rhône, et plus particulièrement dans sa région d'origine, l'Ardèche et la Drôme. Quelques IGP de Savoie (Coteaux de l'Ain) et des Landes l'utilisent.&nbsp;## Des atouts agronomiques qui ne compensent pas de faibles qualités œnologiques\n\nL'abandon progressif du plantet est lié à sa faible potentialité de vinification. Les spécialistes lui reprochent de produire des vins de qualité médiocre, qui courent le risque d'être foxés (odeur typique des cépages hybridés avec des plants américains). Pourtant, ce cépage aux petits grains juteux, résistant et&nbsp;facile d'entretien a probablement&nbsp;participé à faire des vignerons du&nbsp;Sud-Ouest&nbsp;les premiers producteurs de vin de la France de l'entre-deux-guerres !
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `2B77B7EB-6DE2-4D97-A002-2B49EA915FB3` = DefaultGrapeVariety(
        id: UUID(uuidString: "2B77B7EB-6DE2-4D97-A002-2B49EA915FB3")!,
        name: "Rolle",
        description: """
        ## Rolle&nbsp;: un cépage aux origines incertaines\n\nLe cépage rolle, plus connu sous l’appellation vermentino, semble provenir du groupe de cépages malvoisie cultivé essentiellement autour de la Méditerranée. Pour certains, il serait issu de l’île de Madère. Il aurait ensuite été exporté en Espagne, en Corse, en Sardaigne et en Italie. Pour d’autres, il serait né en Grèce et aurait été rapporté par les marchands vénitiens en Italie. Il faut dire que l’Italie est le premier pays producteur de vermentino devant la France.\n\n## Les vins blancs issus du cépage vermentino\n\nSi le rolle domine les trois couleurs de l’AOC Ajaccio, ce cépage est plutôt destiné aux vins blancs. Très cultivé en Corse, il constitue le cépage principal de la célèbre AOC Patrimonio blanc mais aussi de plusieurs vins de Corse (sartène, porto-vecchio, figari, calvi, coteaux-du-cap-corse). Le vermentino est aussi majoritaire dans d’autres vins blancs AOC du Sud&nbsp;: Collioure, Coteaux d’Aix-en-Provence, Coteaux varois en Provence, Les Baux de Provence, Luberon&hellip; On le retrouve aussi en cépage accessoire de l’AOC Bandol ou encore des AOC Banyuls ambré. Il est aussi à la base du DOCG Vermentino di Gallura produit en Sardaigne.\n\n## Rolle&nbsp;: un cépage aux arômes puissants\n\nCe cépage est réputé pour ses arômes de pomme et d'amande notamment, qui apportent beaucoup de caractère aux vins qui l’intègrent dans leur vinification. Il est parfois associé à des cépages rouges pour produire des rosés à forte personnalité. Le rolle craint le vent et certaines maladies.
        """,
        color: .white,
        synonyms: [
            "Malvoisie", "Vermentino"
        ]
    )

    static let `C0CD7187-36C6-40EB-9749-899B52985CF3` = DefaultGrapeVariety(
        id: UUID(uuidString: "C0CD7187-36C6-40EB-9749-899B52985CF3")!,
        name: "Sémillon",
        description: """
        Cépage blanc du Bordelais qui a fait la réputation des vins de ce vignoble et du Bergeracois voisin (monbazillac), notamment en matière de liquoreux (sauternes, barsac. . . ). Dans ces régions, il est assemblé au sauvignon et à la muscadelle pour donner des vins de qualité, secs ou doux (il est majoritaire dans ces derniers). Moins aromatique que le sauvignon, il délivre des notes de miel, de cire d'abeille, de fruits secs, et apporte beaucoup de rondeur et de gras en bouche. Le sémillon s'est répandu dans les vignobles du Nouveau Monde, où il est parfois vinifié seul (Australie).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `EA49D56F-5C4A-4E56-B42A-39F3079F13AB` = DefaultGrapeVariety(
        id: UUID(uuidString: "EA49D56F-5C4A-4E56-B42A-39F3079F13AB")!,
        name: "Roussanne",
        description: """
        ## Roussanne&nbsp;: les origines du cépage\n\nApparentée au cépage marsanne, la roussanne est probablement originaire du Rhône et plus précisément du vignoble drômois. Du fait de sa culture exigeante et de son rendement limité, la roussanne est généralement vinifiée avec d’autres cépages et presque toujours la marsanne. Si ce cépage reste très utilisé en France et notamment dans le vignoble rhodanien, c’est grâce à la puissance aromatique qu’il dégage. La roussanne est parfois appelée bergeron, barbon, courtoisie, petite rousette ou encore rebelot.\n\n## Roussanne&nbsp;: une large utilisation dans les vins AOC du Rhône\n\nLa roussanne constitue le cépage principal de nombreux vins blancs AOC du Rhône&nbsp;: le châteauneuf-du-pape, le côtes-du-rhône, le crozes-hermitage, le lirac, le saint-péray, le vacqueyras, le ventoux mais aussi des côtes-du-rhône-villages. Présent aussi dans d’autres vignobles, il est l’unique cépage blanc de l’AOC Vin de Savoie Chignin-Bergeron et domine d’autres vins du Languedoc-Roussillon, de la Loire et de Bordeaux notamment. Il est majoritaire dans l’encépagement de vins rouges&nbsp;: AOC Beaumes-de-Venise et AOC Châteauneuf-du-Pape.\n\n## Roussanne&nbsp;: les particularités du cépage rhodanien\n\nLa production de roussanne&nbsp;est aléatoire et tardive. La vigne bourgeonne tard et les raisins mûrissent également en fin de période. Si elle permet de produire un vin dense, apte au vieillissement avec une forte puissance aromatique, la roussanne est très sensible à l’oïdium ainsi qu’à la pourriture grise qui menace les vignes.
        """,
        color: .white,
        synonyms: [
            "Ou Bergeron", "Bergeron"
        ]
    )

    static let `8CB3EC56-0FDB-4030-A668-AA32BC5B9453` = DefaultGrapeVariety(
        id: UUID(uuidString: "8CB3EC56-0FDB-4030-A668-AA32BC5B9453")!,
        name: "Shiraz",
        description: """
        ## D’où vient le syrah noir ?\n\nLe syrah apparaît au XVIIIe&nbsp;siècle sur les collines de l’Hermitage, dans les Côtes du Rhône. Ses plants ont rapidement été cultivés sur une grande partie des terres du sud de l’Hexagone. Sa popularité a désormais dépassé les frontières de sa terre natale, puisque ce cépage s’est très bien exporté. En France et à l’international, le syrah noir est cultivé sur presque 200&nbsp;000&nbsp;hectares de terres.\n\n## Quelle utilisation fait-on du syrah noir ?\n\nLe syrah noir est un cépage prestigieux majoritairement utilisé auprès d’autres cépages dans des vins d’appellation&nbsp;: le châteauneuf-du-pape, l'AOC Hermitage, le côtes-du-rhône, le saint-joseph. C’est principalement un raisin de cuve, on le voit peu en raisin de table. Cependant, son goût n’est pas désagréable.\n\n## Quelles sont les particularités du syrah noir ?\n\nLe syrah noir se cultive principalement sur des terres de granit et des terres pauvres. Il résiste très bien aux maladies, mais est plus sensible aux climats secs et chauds et aux grands vents du sud. Ses grappes ont une forte teneur en tannins et une belle couleur foncée, dans les tons bordeaux et parfois violets. Leur intensité et leur arôme donnent des vins rouges de caractère qui s’embellissent en vieillissant. Le syrah est parfois utilisé dans l’encépagement de vins rosés.
        """,
        color: .black,
        synonyms: [
            "Syrah"
        ]
    )

    static let `C64BFFDA-2A6D-4DCC-91BF-4FA776A19413` = DefaultGrapeVariety(
        id: UUID(uuidString: "C64BFFDA-2A6D-4DCC-91BF-4FA776A19413")!,
        name: "Romorantin",
        description: """
        ## Les origines d’un cépage blanc peu cultivé&nbsp;: le romorantin\n\nNous savons, grâce à une étude menée par des chercheurs de l’université de Californie en 1999 que le romorantin provient d’un croisement entre le pinot et le gouais blanc. Plus incertaine est l’origine bourguignonne du cépage. Cette thèse vient du fait que François Ier demanda à planter 80&nbsp;000&nbsp;plants de vigne de Bourgogne autour de sa résidence à Romorantin mais il est peu probable que ce cépage soit réellement celui qu’on appelle le romorantin, le dameri, le gros blanc de Ville-Franche ou encore le raisin de Grave.\n\n## Les rares utilisations du romorantin\n\nBien qu’il soit recommandé dans la vallée de la Loire, le romorantin n’est cultivé que sur de petites parcelles. Seuls 60&nbsp;hectares ont été plantés dans le Loir-et-Cher, département de la commune de Romorantin-Lanthenay. Ce cépage a toutefois la particularité d’être le cépage unique du vin blanc AOC Cour-Cheverny produit dans le vignoble de la Loire. On le retrouve en tant que cépage principal des vins blancs IGP Atlantique, Périgord et Périgord vin de Domme. Cultivé dans d’autres vignobles, il intègre la composition de plusieurs vins IGP du Rhône, du Beaujolais, du Sud-Ouest et de Provence.\n\n## Rondeur du vin et arômes&nbsp;: les particularités du romorantin\n\nLes raisins de ce cépage peuvent faire l’objet d’une récolte tardive. Sa particularité première reste la rondeur que le romorantin offre aux vins qui l’utilisent. Quant à ses arômes, on y reconnaît le miel, les fleurs blanches et parfois même les pruneaux.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `7A5A4BF2-4BC5-48CA-9B5F-BA1FF169809A` = DefaultGrapeVariety(
        id: UUID(uuidString: "7A5A4BF2-4BC5-48CA-9B5F-BA1FF169809A")!,
        name: "Sacy",
        description: """
        ## Sacy&nbsp;: des origines au conditionnel\n\nLes origines du cépage sacy pourraient remonter au XIIIe&nbsp;siècle. Les moines de l’abbaye de Reigny, proche du village de Sacy dans le département de l’Yonne, l’auraient rapporté pour le cultiver en Bourgogne. Il devient un cépage important du département et sa prolifération dans le vignoble inquiète les cultivateurs si bien que ceux-ci demandent à ce qu’il soit proscrit en 1782. Sa chute ne commencera réellement qu’à la fin du XIXe&nbsp;siècle lorsqu’apparaît la maladie du phylloxera qui condamne de nombreuses vignes en Europe. On retrouve ce cépage aussi sous les noms d'aligoté vert, blanc moulin, menu blanc ou encore plant de Sacy.\n\n## Les rares utilisations du sacy\n\nLe vignoble français de sacy n’a cessé de décliner au fil des années. Alors qu’elles occupaient encore 655&nbsp;hectares en 1958, les plantations de sacy ne représentent plus que 80&nbsp;hectares en 1994. Seules deux AOC sont actuellement autorisées à utiliser le sacy dans leur encépagement. Ce cépage domine le crémant de Bourgogne blanc. Il fait par ailleurs partie des cépages complémentaires du saint-pourçain blanc, une appellation issue du vignoble de la Loire.\n\n## Quelques particularités propres au cépage sacy\n\nCe cépage permet de produire des vins légers avec un degré d’alcool limité et une acidité maîtrisée. S’il donne de bons vins tranquilles à l’image du saint-pourçain, il est particulièrement apprécié dans l’élaboration de vins mousseux comme le crémant de Bourgogne qui en est le plus grand représentant.
        """,
        color: .white,
        synonyms: [
            "Tressalier", "Malvoisie"
        ]
    )

    static let `A0BD926D-590F-4D7A-AC2C-BA4E7D02D484` = DefaultGrapeVariety(
        id: UUID(uuidString: "A0BD926D-590F-4D7A-AC2C-BA4E7D02D484")!,
        name: "Savagnin",
        description: """
        ## Quelles sont les origines du savagnin rosé ?\n\nLe savagnin rosé est l'autre nom du gewurztraminer, le vin typique d'Alsace. Il tire son origine du Tyrol autrichien et est arrivé en Franche-Comté au XVIe. Ce cépage est souvent appelé gewurzt, ce qui signifie « épicé ». C'est un raisin qui s'adapte particulièrement bien dans les sols granitiques, argileux ou calcaires. Il a besoin d'être bien exposé au soleil.\n\n## Dans quelles AOC peut-on retrouver le savagnin rosé ?\n\nLe savagnin rosé est moins tranchant et acide que le savagnin ou le sauvignon blanc. On le rencontre dans de multiples vignobles, comme le Beaujolais, le Languedoc-Roussillon, le Rhône, le Bordeaux, la Loire ou encore l'Alsace. Il est utilisé en tant que cépage principal dans l'atlantique blanc IGP, le périgord blanc, l'alsace-klevener de Heiligenstein Klevener AOC/AOP et le calvados blanc. On le trouve aussi en Belgique dans l'AOC Côtes de Sambre et Meuse.\n\n## Quelles sont les particularités du savagnin rosé ?\n\nLes vignes de savagnin rosé se reconnaissent à leurs grains de couleur rouge clair, parfois rosée. Comme la peau des baies est plutôt épaisse, ce cépage est très résistant à la pourriture grise. Les grappes sont petites et tronconiques. Quant au jus du raisin, il est légèrement musqué. Les feuilles se distinguent par leur forme ronde, avec trois lobes. Le vin issu du savagnin rosé dévoile des arômes de fruits exotiques, d'épices et d'agrumes.&nbsp;
        """,
        color: .pink,
        synonyms: [
        ]
    )

    static let `5DBAC2D1-08B6-45E2-8531-0BBC52F52209` = DefaultGrapeVariety(
        id: UUID(uuidString: "5DBAC2D1-08B6-45E2-8531-0BBC52F52209")!,
        name: "Terret",
        description: """
        Cépage noir, gris ou blanc du Languedoc. Le terret figure dans la liste des variétés autorisées des AOC languedoc, châteauneuf-du-pape, côtes-du-rhône, minervois, corbières, palette, mais il n'est pratiquement plus cultivé.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `E486979E-1934-47FE-BC88-40A50781CC08` = DefaultGrapeVariety(
        id: UUID(uuidString: "E486979E-1934-47FE-BC88-40A50781CC08")!,
        name: "Sauvignon",
        description: """
        ## Sauvignon&nbsp;: les origines de ce cépage blanc\n\nOriginaire de la vallée de la Loire et du Bordelais, le sauvignon est un cépage bien implanté en France, tout particulièrement dans ces deux régions. Il y en a aussi quelques vignes en Bourgogne, puisqu'il est utilisé dans la production de l'AOC Saint-Bris. Il est très apprécié dans l'élaboration de vins liquoreux comme de vins blancs secs. Le sauvignon est surnommé différemment selon les régions. On l'appelle, par exemple, savagnou dans les Pyrénées-Atlantiques, ou encore libournais en Dordogne.\n\n## Dans quelles AOC retrouve-t-on le sauvignon blanc ?\n\nLe sauvignon blanc se retrouve dans les vins du Pays d'oc, produits dans le Languedoc, mais aussi dans le sauternes et le monbazillac (allié avec la muscadelle et le sémillon), ainsi que dans le Bergerac. Il est également utilisé dans la production de sancerre, de pouilly-fumé, de quincy ou encore de menetou-salon.&nbsp;## Quelles sont les particularités du sauvignon ?\n\nLe cépage Sauvignon se reconnaît à ses grappes de forme cylindro-conique. Les grains sont plutôt serrés et possèdent une peau épaisse. Ils se distinguent à leur chair à la fois croquante et ferme. Ce cépage est sensible à la pourriture grise et à l'oïdium et possède un débourrement moyen. Les vins issus du sauvignon dévoilent une large palette d'arômes, du litchi aux fruits de la passion, en passant par l'asperge et le musc.
        """,
        color: .white,
        synonyms: [
            "Blanc Fumé"
        ]
    )

    static let `B55184E7-0E53-48CB-BEC1-6B7AEEFFBB1E` = DefaultGrapeVariety(
        id: UUID(uuidString: "B55184E7-0E53-48CB-BEC1-6B7AEEFFBB1E")!,
        name: "Tourbat",
        description: """
        Cépage blanc catalan devenu rare, donnant des vins vifs et fruités. Il peut entrer dans l'assemblages de plusieurs AOC (collioure, côtes-du-roussillon blanc).
        """,
        color: .white,
        synonyms: [
            "Malvoisie du Roussillon"
        ]
    )

    static let `B5981DA1-8DAB-4D1C-987F-ABD732919100` = DefaultGrapeVariety(
        id: UUID(uuidString: "B5981DA1-8DAB-4D1C-987F-ABD732919100")!,
        name: "Sauvignon",
        description: """
        ## Quelles sont les origines du sauvignon gris ?\n\nLe sauvignon gris tire ses origines du sud-ouest de la France, mais on le retrouve également dans le Rhône, en Provence, à Bordeaux, dans la Loire, en Bourgogne, dans le Jura, dans le Beaujolais ou encore dans le Languedoc-Roussillon. Ce n'est pas un raisin de table et il est utilisé uniquement pour le vin. Ce cépage est également surnommé surin du Poitou dans le Loir-et-Cher.\n\n## Dans quels types de vin peut-on retrouver le sauvignon gris ?\n\nLe sauvignon gris est utilisé en tant que cépage principal dans de nombreux vins&nbsp;comme le cheverny blanc, du cité-de-carcassonne blanc, de coteaux-de-l'auxois blanc, du sauternes, du pays-d'oc blanc et gris, du périgord blanc, du bergerac blanc ou encore de l'ariège blanc. Plusieurs vins l'utilisent comme cépage accessoire, comme le côtes-de-blaye, le floc-de-gascogne blanc, le tursan blanc, le valençay blanc, le touraine blanc ou encore le quincy.\n\n## Un cépage aux notes fruitées\n\nLe sauvignon gris se reconnaît à ses grains de raisin de petit calibre et à ses grappes de petite taille. Contrairement à ce que son nom indique, il possède une couleur jaune pâle. Ce cépage dévoile des arômes de buis et de pamplemousse. On sent également des effluves de litchi, de fruit de la passion, d'orange et de menthol. Le moment optimal pour récolter le sauvignon est le matin. Il craint l'oïdium et la flavescence dorée.
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `C6C58754-1F6B-487D-B4DD-F5BA56F1049D` = DefaultGrapeVariety(
        id: UUID(uuidString: "C6C58754-1F6B-487D-B4DD-F5BA56F1049D")!,
        name: "Seinoir",
        description: """
        ## Seinoir noir&nbsp;: quelles sont les origines de ce cépage aux nombreuses qualités ?\n\nIssu d'un mariage entre plusieurs variétés de seibel, réalisé par Albert Seibel, le seinoir se retrouve principalement dans la région centre-ouest&nbsp;: Limousin, Poitou et Berry. Le seinoir est inscrit au Catalogue des variétés de vignes, classé sur la liste A.\n\n## Dans quelles AOC retrouver le seinoir noir ?\n\nLe seinoir noir se retrouve dans plusieurs vignobles&nbsp;: le Beaujolais, la Savoie et Bugey, la Provence-Corse, le Rhône et la Loire. Il est donc utilisé dans l'élaboration du mont-caume blanc/rosé/rouge, du var blanc/rosé/rouge, de l'ardèche blanc/rosé/rouge ou encore du coteaux-des-baronnies blanc/rosé/rouge. Le seinoir noir ne peut pas composer une appellation à lui tout seul, puisqu'il produit un vin peu savoureux.\n\n## Comment reconnaître le cépage seinoir noir ?\n\nCe cépage noir se caractérise par ses jeunes feuilles aux reflets bronzés, ses feuilles adultes de forme pentagonale ou orbiculaire et ses grains ronds. Ses grappes sont de taille moyenne et les baies offrent une saveur plutôt herbacée. Les grains de raisin sont d'ailleurs de couleur noire bleutée, avec une pulpe molle. C'est un raisin qui nécessite une greffe, résiste correctement à l'oïdium, mais est très sensible au mildiou comme à la pourriture grise. Le seinoir arrive à maturité à la première époque, comme le chasselas, et entame sa période de débourrement une petite semaine avant le chasselas.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `B48FD364-429A-494B-85F3-5F9DC22EE085` = DefaultGrapeVariety(
        id: UUID(uuidString: "B48FD364-429A-494B-85F3-5F9DC22EE085")!,
        name: "Ugni Blanc",
        description: """
        Cépage blanc d'origine italienne, et principale variété blanche cultivée en France. Ses grandes grappes donnent des vins fins, légers et vifs, adaptés à la distillation : c'est aujourd'hui le cépage principal pour l'élaboration des cognac et armagnac. L'ugni blanc, un peu plus riche en alcool lorsqu'il est cultivé dans les régions méditerranéennes, entre dans l'assemblage des appellations de Provence et de l'AOC vin-de-corse, souvent associé à d'autres cépages qui apportent des arômes et de la structure, comme la clairette, le grenache blanc ou le sauvignon. L'ugni blanc entre aussi, à titre accessoire, dans la production de certains vins blancs en Gironde (AOC bordeaux, entre-deux-mers. . . ).
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `C548D3F4-7336-49D7-9FF7-411D93424C0F` = DefaultGrapeVariety(
        id: UUID(uuidString: "C548D3F4-7336-49D7-9FF7-411D93424C0F")!,
        name: "Vaccarèse",
        description: """
        Cépage noir, l'un des 13 de Châteauneuf-du-Pape, pouvant être utilisé en assemblage dans cette appellation et d'autres AOC voisines (côtes-du-rhône, gigondas. . . ). Il produit un vin floral, élégant et frais, qui équilibre la chaleur du grenache. Il est rare.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8` = DefaultGrapeVariety(
        id: UUID(uuidString: "C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8")!,
        name: "Tannat",
        description: """
        ## Un cépage noir originaire des montagnes pyrénéennes\n\nLe cépage tannat noir vient du pays de Béarn, dans les Pyrénées. C’est une très vieille variété. Ses premiers plants seraient apparus à l’époque de la Rome antique. Au XVIIIe&nbsp;siècle, on donne à cette vigne le nom de tannat, qui, en occitan, signifie tanné, en raison de sa forte teneur en tannins. Plus de 3&nbsp;000&nbsp;hectares sont consacrés à ces vignes en France. Le tannat noir est très populaire dans les vignobles d’Argentine et d’Uruguay. Il est d’ailleurs utilisé dans l’encépagement de près de 60&nbsp;% des vins en Uruguay.\n\n## Quelle utilisation pour le tannat noir ?\n\nLe tannat noir&nbsp;est utilisé dans l’encépagement de nombreux vins, mais rarement en cépage unique. Il donne naissance à des vins au goût boisé, voire épicé. Il est notamment un des cépages qui composent le vin madiran, des cahors et de côtes-du-brulhois. Les saveurs de cette variété s’intensifient avec le vieillissement. Le tannat est un raisin de cuve,&nbsp;il n'est pas consommé en&nbsp;raisin de table.\n\n## Quelles sont les caractéristiques du tannat noir ?\n\nCette vigne apprécie particulièrement les terres sableuses. En revanche, elle craint certains insectes ravageurs. Les vins produits avec ce cépage sont forts en tannins et ont un goût à la fois acide et fruité. Pour apprécier toutes les saveurs et les vertus de cette variété, le vieillissement est un must.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `61F0F229-C81C-4205-A89D-8825B2D04AB1` = DefaultGrapeVariety(
        id: UUID(uuidString: "61F0F229-C81C-4205-A89D-8825B2D04AB1")!,
        name: "Select",
        description: """
        ## Les origines du select blanc\n\nLe select est le résultat d'un croisement réussi entre le jurançon blanc et l'ugni blanc. Cette alliance a été réalisée par Jean-Louis Vidal en Charente-Maritime, pour produire un raisin uniquement destiné à l'élaboration du vin. On ne trouve pas de select sur les tables !## Dans quels vignobles retrouve-t-on ce cépage blanc ?\n\nLe select est un cépage blanc prisé dans de nombreux vignobles, comme le Sud-Ouest, le Bordeaux, la Provence et la Corse, Cognac, le Rhône, la Loire, la Savoie Bugey ou encore le Beaujolais. On le retrouve donc comme cépage principal dans le périgord blanc, le périgord-vin-de-domme blanc ou encore l'atlantique blanc. Il est également utilisé dans l'élaboration du cognac en tant que cépage accessoire. Plusieurs vins IGP sont aussi préparés avec du select blanc, comme le drôme blanc IGP, le coteaux-des-baronnies rosé, le maures rouge IGP, le gers rouge/rosé/blanc ou le vaucluse rouge. Il produit également des eaux-de-vie de qualité.\n\n## Comment reconnaître les vignes de select blanc ?\n\nLe select possède des feuilles de couleur vert foncé, avec cinq ou sept lobes. Ce cépage produit des grains de raisin arrondis, de taille moyenne. Les grappes sont plutôt grosses. La période de débourrement du cépage select est tardive et il arrive à maturité à la 3e&nbsp;époque hâtive. Il évite les gelées de printemps ! Très productif et résistant à la pourriture grise, ce cépage de vigueur moyenne nécessite une taille plutôt longue.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `76B6CFBE-DFD5-4A89-A120-8E234D56ADF4` = DefaultGrapeVariety(
        id: UUID(uuidString: "76B6CFBE-DFD5-4A89-A120-8E234D56ADF4")!,
        name: "Servant",
        description: """
        ## D’où provient le servant ?\n\nLe servant blanc serait originaire du Languedoc. Son nom aurait même une signification en patois languedocien. Le nom de ce cépage varie selon les régions&nbsp;: servant, servan ou servent. Il n’est pas très répandu sur le sol français. Il apparaît dans la liste A du Catalogue officiel national des variétés de vigne. Ses matériels de multiplication peuvent donc être distribués dans l’Union européenne.\n\n## Utilisations réservées au servant\n\nLe servant n’est pas vraiment un cépage de choix pour produire du vin. Son vin est fade et ne crée donc pas l’engouement des œnophiles. Cependant, en raisin de table, c’est tout le contraire. Il est notamment apprécié pour sa longue conservation, mais aussi l’aspect de ses grappes dorées et leur goût sucré.\n\n## Un cépage relativement fragile\n\nLe servant blanc est un cépage facile à cultiver. En France, nombre de terres lui conviennent. Il a une nette préférence pour celles légèrement humides et pour les sols calcaires. Sa maturité est tardive. Ce cépage est peu résistant face au froid, aux maladies et aux insectes prédateurs. Ses grappes sont généreuses et ont une très jolie couleur, elles font d’ailleurs penser à celles d’une autre variété, le gros vert.&nbsp; La chair des raisins issus du servant cépage blanc est juteuse et leur peau est épaisse, ce qui permet à cette variété d’être un excellent raisin de table.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `AF53EFC1-A316-4390-8BF0-B2C15833C96A` = DefaultGrapeVariety(
        id: UUID(uuidString: "AF53EFC1-A316-4390-8BF0-B2C15833C96A")!,
        name: "Tempranillo",
        description: """
        ## Tempranillo&nbsp;: un cépage aux origines ibériques\n\nLe cépage noir tempranillo vient des vignobles espagnols. Si, en France, il est cultivé notamment dans les régions du sud, il est essentiellement implanté dans la péninsule ibérique. On le retrouve surtout dans le vignoble de Castille et León dans le nord-ouest de l’Espagne, mais aussi sous le nom de tinta roriz au Portugal.\n\n## Son utilisation en France et de l’autre côté des Pyrénées\n\nEn France, aucun vin d'AOC n'a recours à ce cépage noir. Il peut constituer toutefois le cépage principal de plusieurs vins IGP rosé et rouge du Languedoc-Roussillon&nbsp;(ariège, pays-d’oc) et de Bordeaux (atlantique, périgord). L’IGP Sable de Camargue pour sa vinification en rouge, rosé et gris l’utilise en tant que cépage complémentaire. Côté espagnol, il est particulièrement sollicité pour le DO Ribera del Duero et le DOC Rioja. Au Portugal, le tempranillo intervient dans l’encépagement de plusieurs vins rouges et notamment du Porto.\n\n## Tempranillo&nbsp;: un cépage précoce\n\nPour bien comprendre, il convient d’expliquer pour les non-hispanophones que temprano veut dire tôt. C’est ce caractère précoce qui a donné son nom au cépage tempranillo qui a d’ailleurs de nombreuses autres appellations (tinto fino, negra de mesa, aragonez, grenache de logrono&hellip;). En Espagne, il est récolté plusieurs semaines avant le cépage grenache. Un cycle de vie particulièrement court qui lui permet de s’adapter aux régions chaudes.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `53DFEB00-DE5E-4534-9047-57132119DFF4` = DefaultGrapeVariety(
        id: UUID(uuidString: "53DFEB00-DE5E-4534-9047-57132119DFF4")!,
        name: "Sylvaner",
        description: """
        ## D’où vient le sylvaner blanc ?\n\nLe sylvaner blanc n’est pas né en Alsace, mais a vu le jour sur les bords du Danube, en Europe centrale possiblement dans l’actuelle Autriche. À partir du XVIIe&nbsp;siècle, on retrouve cette variété de cépage en Allemagne. Elle aurait été ramenée par un abbé qui aurait commencé à cultiver le cépage dans son abbaye. Des tests ADN ont permis de déterminer que le sylvaner blanc est le fruit du mélange entre deux cépages blancs autrichiens&nbsp;: le gewürztraminer et le österreichisch-weiß.\n\n## Quelles sont les utilisations du sylvaner blanc ?\n\nLe sylvaner blanc est réputé pour donner vie à des vins de qualité aux saveurs subtiles et aux notes élégantes. De fait, c’est sa principale utilisation. Ce n’est pas vraiment un raisin de table. Ses propriétés exceptionnelles en font un&nbsp;très bon cépage principal pour de nombreux vins comme certains grands crus d’Alsace et des pays-d'oc IGP.\n\n## Quelles sont les particularités du sylvaner blanc ?\n\nLe cépage blanc sylvaner se distingue des autres cépages par ses grappes compactes, longues et généreuses dont la couleur tend vers le jaune éclatant à maturité. Son goût plutôt acide donne naissance à des vins secs adaptés pour accompagner des fruits de mer et des bouchées apéritives. Ce cépage est sensible au froid, au vent et aux maladies. Ses terres idéales sont argileuses.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `85F1DAFA-4494-49D4-A5D1-8160C7719A73` = DefaultGrapeVariety(
        id: UUID(uuidString: "85F1DAFA-4494-49D4-A5D1-8160C7719A73")!,
        name: "Tibouren",
        description: """
        ## Tibouren&nbsp;: quelles origines ?\n\nUne chose est sûre, le tibouren est connu comme un cépage provençal. Mais comment s’est-il imposé dans le sud de la France&nbsp;? La vigne aurait été transportée par bateau au XVIIIe&nbsp;siècle jusqu’à Saint-Tropez où il se serait développé. On raconte aussi que ce sont les Romains qui l’ont ramené en France après l’avoir testé dans le vignoble de la Chaldée (Irak actuel) puis sur les rivages du Tibre, le fleuve italien qui se jette dans la Méditerranée. On le retrouve sous les noms d'antiboulen, tiboulen ou bien gaysserin et antibouren.\n\n## Tibouren&nbsp;: quelles utilisations&nbsp;?\n\nEn tant que cépage historique de Provence, c’est naturellement dans cette région qu’il est le plus sollicité. Le tibouren domine d’ailleurs l’encépagement du vin rosé AOC Côtes de Provence&nbsp;Fréjus et des vins rosé et rouge de l’AOC Côtes de Provence. Le tibouren est aussi utilisé comme cépage accessoire de trois autres appellations&nbsp;: AOC Coteaux varois en Provence rosé et rouge, Côtes de Provence la Londe rosé, Palette rosé et rouge. Ce cépage peut également intervenir dans la vinification de vins IGP de Bordeaux (atlantique, périgord).\n\n## Tibouren&nbsp;: quelles particularités&nbsp;?\n\nCe qui distingue les vins issus du tibouren avant même leur dégustation, c’est leur clarté. Il est d’ailleurs utilisé pour produire des rosés clairs, quasiment transparents. Malgré cette couleur, ces vins sont à la fois très fruités avec un degré d’alcool élevé puisqu’il peut atteindre 15°.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `69F622BF-0EBA-47BE-BE89-DB2DA2919E40` = DefaultGrapeVariety(
        id: UUID(uuidString: "69F622BF-0EBA-47BE-BE89-DB2DA2919E40")!,
        name: "Trousseau",
        description: """
        ## Du chauché gris au trousseau gris\n\nOriginaire du Jura, le trousseau gris est un cépage peu répandu qui est actuellement cultivé en Charente. On le nomme alors chauché gris et il domine l’encépagement des vins blancs d’Aunis, fameux vins du Moyen-Âge, dont les vignes maillent le paysage autour de La Rochelle, mais aussi des îles charentaises. Les vins blancs issus du trousseau gris sont si réputés que le roi de France Henri&nbsp;II consommait régulièrement ce qu’on appelait les vins nobles de Rupella. Ces vignes se sont même exportées dans toute l’Europe du Nord jusqu’à ce qu’un hiver particulièrement rigoureux ne les dévaste. Le vignoble décline et doit faire face à la crise du phylloxera à la fin du XIXe&nbsp;siècle.\n\n## La renaissance du trousseau gris dans les vins de Charente\n\nEn 2003, un ampélographe de l’INRA constate que ce cépage rare et historique est en bonne santé et lui donne son nom actuel de trousseau gris. S’ensuit une première vinification et plusieurs pieds sont replantés dans le vignoble charentais. Le cépage se voit inscrire dès 2011 au catalogue officiel des cépages. Il intègre ainsi le cahier des charges de production de l’IGP Vins de pays charentais. Le trousseau gris rejoint également l’encépagement de l’AOC Pineau des Charentes à partir de 2017.\n\n## Les spécificités du trousseau gris\n\nLa robe des vins vinifiés à base de trousseau gris est claire et limpide. Ce cépage est rare, mais de grande qualité à la faveur d’une certaine puissance aromatique avec une petite note d’amertume.&nbsp;
        """,
        color: .grey,
        synonyms: [
        ]
    )

    static let `6769C382-3053-4767-B654-684850EBC42F` = DefaultGrapeVariety(
        id: UUID(uuidString: "6769C382-3053-4767-B654-684850EBC42F")!,
        name: "Villard",
        description: """
        ## Aux origines du villard blanc\n\nLe villard blanc a été obtenu par croisement interspécifique entre le Seibel&nbsp;6488 et le Subéreux&nbsp;6905 par la maison Seyve-Villard, installée à Saint-Vallier (Drôme). Il porte aussi le nom de Seyve-Villard&nbsp;12&nbsp;375. Ce cépage couvre une superficie de plus en plus réduite&nbsp;: seulement 133&nbsp;hectares en 2018 contre 1&nbsp;129&nbsp;hectares en 1998. Néanmoins, il a été planté dans d’autres pays comme les États-Unis, le Japon, la Hongrie et le Brésil.\n\n## Villard blanc&nbsp;: les vins IGP\n\nLe villard blanc sert à l’élaboration de vins d’indication géographique protégée de qualité courante. On le retrouve dans des vins du Languedoc-Roussillon comme le cévennes, le coteaux-d’ensérune, le coteaux-du-pont-du-gard, le côtes-de-thau, le côtes-du-brian&hellip; Le villard blanc sert de produit pour la distillation. Il est notamment utilisé dans l’élaboration de l’armagnac. Les vins blancs ont une robe jaune clair et un goût légèrement amer, aux arômes d’agrumes et d’herbe fraîche.\n\n## Villard blanc&nbsp;: les spécificités du cépage\n\nDe maturité tardive (20&nbsp;jours après le chasselas), le cépage villard blanc est fertile, vigoureux et productif. Ses grappes sont tronconiques, de taille moyenne à grande. Les baies sont de taille irrégulière, ovoïdes ou elliptiques, à peau verdâtre ou jaune doré. À pleine maturité, elles offrent une chair savoureuse et peuvent être consommées. Les jeunes feuilles sont dépourvues de duvet, aux reflets de bronze. Lorsqu’elles sont adultes, elles comportent 5&nbsp;lobes, des dents longues et fines.
        """,
        color: .white,
        synonyms: [
            "12375 Seyve-Villard"
        ]
    )

    static let `8C41F045-4015-4083-BAAA-F8105BD516F0` = DefaultGrapeVariety(
        id: UUID(uuidString: "8C41F045-4015-4083-BAAA-F8105BD516F0")!,
        name: "Trousseau",
        description: """
        ## Les origines du cépage noir trousseau\n\nLe trousseau est présent en Franche-Comté depuis 1731 minimum. Il serait un descendant du cépage savagnin. Dans le Jura, il est planté sur une centaine d’hectares, représentant environ 5&nbsp;% des vignes locales. On le trouve notamment autour du village de Montigny-lès-Arsures, appelée capitale du Trousseau. Une fête lui y est dédiée chaque mois de juillet. En France, on le surnomme&nbsp;trousseau noir, tresseau ou encore sémillon rouge.\n\n## Les utilisations françaises du trousseau\n\nVins secs ou doux, vins rosés, rouges ou blancs, vins de paille, tranquilles, mousseux ou liquoreux, le trousseau permet aux vins du Jura de s’exprimer de bien des manières. Les AOC Arbois et Arbois Pupillin l’utilisent à titre principal, tout comme l’AOC Côtes du Jura, le vin doux AOC Macvin du Jura et l’AOC Crémant du Jura. Les AOC Arbois, Arbois Pupillin et Côtes du Jura recourent accessoirement à ce cépage noir pour produire des vins blancs secs tranquilles.\n\n## Les particularités du cépage trousseau\n\nSi, en France, il n’est quasiment cultivé que dans le Jura, il s’est toutefois exporté dans de nombreux vignobles hors du pays, ce qui s’explique par les pèlerinages à Saint-Jacques-de-Compostelle organisés sous l’impulsion de Calixte&nbsp;II, pape originaire de Franche-Comté au XIIe&nbsp;siècle. C’est ainsi que le trousseau s’est implanté en Galice et au Portugal où il contribue à la vinification du DOC Porto ainsi que du DOC Madère. Le trousseau permet aussi l’élaboration d’un vin de dessert en Australie.
        """,
        color: .black,
        synonyms: [
        ]
    )

    static let `9256A0FA-F1FC-4D1D-A2BD-4B75AD38D3F5` = DefaultGrapeVariety(
        id: UUID(uuidString: "9256A0FA-F1FC-4D1D-A2BD-4B75AD38D3F5")!,
        name: "Villard",
        description: """
        ## Villard noir&nbsp;: quelle est son origine ?\n\nLe cépage villard noir est aussi appelé Seyve-Villard&nbsp;18&nbsp;315. Il est issu d'un croisement entre le subéreux (Seibel&nbsp;6905) et le chancellor (Seibel&nbsp;7053). Il aurait été créé sur la propriété de Seyve-Villard, à Saint-Vallier, dans la Drôme. Le villard noir est en voie de disparition. Sa surface de culture est aujourd'hui inférieure à 1&nbsp;000&nbsp;hectares alors qu’il occupait plus de 27&nbsp;170&nbsp;hectares à la fin des années&nbsp;1950.\n\n## Les utilisations du villard noir\n\nCépage hybride, le villard noir est utilisé dans les vins d’indication géographique protégée de différents vignobles&nbsp;: Languedoc-Roussillon, Provence-Corse, Beaujolais&hellip; On le retrouve notamment dans le comtés-rhodaniens, le cévennes, le côte-vermeille, le coteaux-du-pont-du-gard, le mont-caume, ou encore le var. Ces vins de qualité courante sont de belle couleur, forts en alcool, astringents, et dégagent une saveur herbacée.\n\n## Villard noir&nbsp;: quelles caractéristiques ?\n\nAvec un port demi-érigé, le villard noir est un cépage peu vigoureux, mais très fertile. Ses grappes, sont de taille moyenne, cylindro-coniques. Les baies sont également de taille moyenne, pulpeuses, de couleur noire à reflets bleus, recouvertes de pruine. Le débourrement du villard noir est précoce (2&nbsp;jours avant le chasselas) et l’époque de maturité est de deuxième époque, soit 2&nbsp;semaines après le chasselas.
        """,
        color: .black,
        synonyms: [
            "12375 Seyve-Villard"
        ]
    )

    static let `EBDB7CBF-598F-4D72-84FF-3595037216AA` = DefaultGrapeVariety(
        id: UUID(uuidString: "EBDB7CBF-598F-4D72-84FF-3595037216AA")!,
        name: "Valerien",
        description: """
        ## Les origines du cépage valérien blanc\n\nLe valérien blanc, aussi appelé « Seyve-Villard&nbsp;23&nbsp;410 », est un cépage originaire de la Drôme, dans le sud-est de la France. Selon toute vraisemblance, il&nbsp;a été créé sur l’exploitation viticole de Seyve-Villard, à Saint-Vallier. Le valérien est un cépage issu d’un croisement interspécifique dont la parenté est inconnue. Il est très rarement utilisé aujourd’hui et occupe une surface de plus en plus réduite.\n\n## Quels vins avec le valérien blanc ?\n\nLe valérien blanc étant un cépage hybride, il n’est pas autorisé dans l’élaboration de vins AOC. En revanche, il peut être utilisé dans les vins IGP des vignobles du Rhône, du Languedoc-Roussillon, ou encore du Beaujolais. C’est le cas du vicomté-d’aumelas, coteaux-des-baronnies, du drôme, du pays-d’hérault, du coteaux-d’ensérune, du comtés-rhodaniens ou encore du côtes-de-thau. Ces vins sont plutôt communs, acides et bien alcoolisés.\n\n## Les caractéristiques du cépage valérien blanc\n\nCe cépage blanc se caractérise par un port demi-érigé et vigoureux. Ses grappes sont de taille moyenne, ailées, de forme cylindrique et terminées en cône. Les baies du valérien blanc sont aussi moyennes, rondes ou obovoïdes, avec une peau blanc-vert recouverte d’une pruine blanchâtre. Le cépage apprécie les terrains profonds et frais, peu sujets à la sécheresse, et une exposition à l’abri du vent.
        """,
        color: .white,
        synonyms: [
        ]
    )

    static let `FA056754-9E04-4FDD-8C41-3D89F58F78BB` = DefaultGrapeVariety(
        id: UUID(uuidString: "FA056754-9E04-4FDD-8C41-3D89F58F78BB")!,
        name: "Viognier",
        description: """
        ## D’où vient le viognier ?\n\nLe viognier est originaire de la région du Rhône. Décimé par le phylloxera, il avait quasiment disparu au milieu du XXe&nbsp;siècle. Des vignerons l’ont replanté massivement dans les années&nbsp;1980. Depuis, la surface cultivée du viognier a augmenté pour atteindre 2&nbsp;500&nbsp;hectares. Il est aujourd’hui présent dans les vignobles du sud de la France, en Europe (Italie, Espagne, Grèce, Suisse), mais aussi en Australie, aux États-Unis, en Argentine et en Afrique du Sud notamment.\n\n## Les vins AOC et IGP élaborés avec le cépage viognier\n\nLe viognier est connu pour être le seul cépage utilisé dans l’élaboration du château-grillet et du condrieu, des vins AOC de la vallée du Rhône. On le trouve dans l’AOC Côte-Rôtie, dont il représente 20&nbsp;% de la structure maximum, associé à la syrah. Ces vins blancs sont fins, capiteux, dégageant des arômes à la fois riches et complexes&nbsp;: fruits exotiques, fruits jaunes, épices, miel, tabac, iris, violette&hellip; Le viognier est aussi utilisé dans des vins IGP comme le sable-de-camargue, le pays-d’oc ou encore le cité-de-carcassonne.\n\n## Viognier&nbsp;: les spécificités du cépage\n\nLes grappes du viognier sont petites à moyennes, tronconiques et compactes. Les baies sont de petite taille, sphériques ou ovoïdes, à peau épaisse et verdâtre, tirant sur l’ambre ou le rosé à maturité complète. Les jeunes feuilles sont vertes à reflets dorés tandis que les feuilles adultes sont petites, de couleur vert clair, à 3 ou 5&nbsp;lobes, avec des dents moyennes et un limbe à bulbes, aux bords frisés.
        """,
        color: .white,
        synonyms: [
        ]
    )
}

extension DefaultWineVineyard {
    static let `6DAE236B-7529-41C5-8286-F5C545EEC623` = DefaultWineVineyard(
        id: UUID(uuidString: "6DAE236B-7529-41C5-8286-F5C545EEC623")!,
        description: "Autrefois très étendu, le vignoble du Haut-Poitou ne représente plus aujourd'hui qu'environ 500 ha, sa plus grande partie correspondant à l'aire d'appellation du cognac.",
        name: "Poitou-Charentes",
        soilAndClimate: "La région est marquée par des paysages de plaines en Poitou, plus ondulés en Charente, où les sols prennent ça et là la couleur blanchâtre du calcaire. Le climat océanique très doux, ensoleillé l'été et à l'arrière-saison, avec de faibles écarts de températures, permet une lente maturation des raisins qui rapproche en cela le Poitou-Charentes de l'Aquitaine.",
        history: "C'est au Moyen Âge que s'épanouissent les vignobles du Poitou, de l'Aunis, de la Saintonge et de l'Angoumois, favorisés par l'essor des villes de l'Europe du Nord et par le renouveau de la navigation maritime. La Hollande devient au XIV e&nbsp;siècle le principal débouché, et ce sont les négociants de ce pays qui introduisent la distillation, à l'origine du cognac. La notoriété de l'eau-de-vie s'affirme aux XVIII e et XIX e&nbsp;siècles, si bien que le cognac est reconnu en appellation en 1909."
    )

    static let `6A4EEF0D-1480-4A18-9500-D0D8062B7C56` = DefaultWineVineyard(
        id: UUID(uuidString: "6A4EEF0D-1480-4A18-9500-D0D8062B7C56")!,
        description: "Le vignoble jurassien, à la géologie tourmentée, pendant de celui de la haute Bourgogne, de l'autre côté de la vallée de la Saône, occupe les pentes qui descendent du premier plateau des monts du Jura vers la plaine. Une bande de 80 km de long, traversant tout le département du Jura, de Salins-les-Bains, au nord, à Saint-Amour, au sud. Les terroirs les plus favorables se situent en coteaux entre 250 et 400 m d'altitude. Plantés de cépages locaux et d'autres, issus de Bourgogne, ces terroirs voient naître des vins atypiques, à l'image du célèbre vin jaune, du vin de paille ou encore du macvin.",
        name: "Jura",
        soilAndClimate: "Le vignoble jurassien, établi sur des pentes accidentées, est constitué de **sols de marnes,****d'argiles** et **d'éboulis calcaires.** Le **climat**, de type continental, connaît des **variations parfois brutales&nbsp;**: hivers rudes et étés irréguliers, avec souvent beaucoup de journées chaudes. La **vendange**&nbsp;des vins du Jura s'effectue pendant une **période assez longue**, se prolongeant parfois jusqu'en **novembre** en raison des **différences de précocité entre les cépages.**",
        history: "La vigne jurassienne prospère ici **depuis l'Antiquité&nbsp;: Pline le Jeune** cite les vins jurassiens vers l'**an&nbsp;80.** Au **Moyen Âge,** les sites escarpés et protégés des vents froids abritent des vignobles à **Arbois**, **Château-Chalon et l'Étoile**. Le **vin du Jura **est alors fort apprécié, à l'image d'**Henri&nbsp;IV**, célèbre amateur des vins locaux. Autre élément propice à l'expansion viticole&nbsp;: la** présence de salines** qui favorise les **échanges commerciaux** et donc les **expéditions de vins du Jura**. Le vignoble&nbsp; jurassien poursuit son développement jusqu'au **XIX e&nbsp;siècle,** porté par l'intérêt que lui vouent la noblesse locale et les ecclésiastiques. C'est aussi ici qu'est créée l'une des premières coopératives viticoles, en 1906 à Arbois. Aujourd'hui, le **vignoble jurassien** s'étend sur environ **1 800&nbsp;ha et produit 82 000&nbsp;hl par an.**"
    )

    static let `BD447EA1-F42C-493E-8981-E14C3EC81CA6` = DefaultWineVineyard(
        id: UUID(uuidString: "BD447EA1-F42C-493E-8981-E14C3EC81CA6")!,
        description: "",
        name: "Corse",
        soilAndClimate: "Le relief et les modulations climatiques qu'il entraîne s'associent à trois types de sols principaux&nbsp;: les sols granitiques, les plus répandus, au sud et à l'ouest de l'île?; les sols de schistes au nord-est?; les sols calcaires entre ces deux zones. Le climat très ensoleillé est tempéré par une relative humidité due à l'influence maritime. L'ensemble de ces facteurs explique la présence de la vigne un peu partout dans l'île, seule l'altitude en limitant l'implantation.",
        history: "## Histoire des vins de Corse\n\n&nbsp;\n\nCe sont les **Phocéens** qui ont introduit la vigne en Corse il y a **2 600&nbsp;ans.** La commune d'Aléria, sur la côte est, en porte encore le témoignage, cette ville où ces mêmes Phocéens avaient fondé le comptoir d'Alalia. Plus largement, la Corse, suite aux nombreuses et successives occupations** par les Romains, les Barbares, les Toscans puis les Génois, a bénéficié de riches influences commerciales**."
    )

    static let `3024B153-84CE-4967-B831-30B5253A22FB` = DefaultWineVineyard(
        id: UUID(uuidString: "3024B153-84CE-4967-B831-30B5253A22FB")!,
        description: "Autrefois florissant, le vignoble lorrain est aujourd'hui l'un des plus petits de France. Produits sur les départements de la Meuse, de la Moselle et de la Meurthe-et-Moselle, les vins lorrains sont déclinés dans les trois couleurs, mais ce sont surtout les vins gris, des rosés de couleur. . . grise ou pelure d'oignon issus de pinot et de gamay, qui font leur réputation.",
        name: "Lorraine",
        soilAndClimate: "Très morcelé, le vignoble de Moselle couvre les coteaux qui bordent la vallée de la rivière éponyme, implanté sur des sols essentiellement argilo-calcaires. Il se concentre autour des trois pôles&nbsp;: au sud et à l'ouest de Metz, dans la région de Sierck-les-Bains et dans la vallée de la Seille, autour de Vic-sur-Seille. à l'ouest de Toul, le vignoble des côtes-de-toul est implanté sur huit communes situées sur la côte de Meuse, sur des sols d'argiles et d'éboulis calcaires. Le climat lorrain est semi-continental, avec des saisons bien marquées, de bonnes températures estivales et des pluies bien réparties.",
        history: "Installés en Lorraine dès le I er&nbsp;siècle av. J.-C., les Romains vont développer la culture de la vigne, notamment en Moselle. Durant tout le Moyen Âge, le vignoble poursuit son extension, portée par les ecclésiastiques (les évêchés de Metz, de Toul et de Verdun notamment) et les nobles?; un développement qui se poursuit jusqu'au XIX e&nbsp;siècle. Ainsi, dans les années 1830, le vignoble lorrain compte quelque 35?000&nbsp;ha, l'équivalent de l'actuelle Champagne. Mais en 1866 le phylloxéra, l'industrialisation, la crise viticole de 1907 puis les guerres mondiales anéantissent une grande partie des vignes. Et si celles-ci sont partiellement replantées, elles ne retrouveront plus jamais leur superficie du XIX e&nbsp;siècle. Ce n'est qu'en 1951 que les pouvoirs publics reconnaissent l'AOC moselle. Aujourd'hui, les deux appellations de la région – côtes-de-toul et moselle – recouvrent une superficie d'environ 100 ha."
    )

    static let `29B1FC5D-EE03-4C10-94A5-4346A729AEA1` = DefaultWineVineyard(
        id: UUID(uuidString: "29B1FC5D-EE03-4C10-94A5-4346A729AEA1")!,
        description: "Synonyme de fête, le champagne symbolise dans le monde entier l'élégance à la française. Il est aussi le modèle de la plupart des effervescents de qualité, dont l'élaboration repose également sur la double fermentation en bouteilles. Mais si l'on parle généralement du champagne, au singulier, son visage est pluriel et il offre une grande variété de styles : blanc de blancs, blanc de noirs, millésimé ou non, dosé ou non. . . Autre particularité : la plupart des viticulteurs cèdent tout ou partie de leurs raisins aux grandes maisons, qui se chargent d'élaborer le vin et de le vendre sous leur marque. On n'oubliera pas enfin les deux autres appellations de Champagne, en vins tranquilles : coteaux-champenois et rosé-des-riceys.",
        name: "Champagne",
        soilAndClimate: "Si un même paysage vallonné se révèle dans tout le vignoble, on distingue généralement quatre régions principales&nbsp;: la Montagne de Reims, où le pinot noir se plaît particulièrement?; la Vallée de la Marne, qui descend jusqu'à la région de Château-Thierry (Aisne) et privilégie le pinot meunier?; la Côte des Blancs, d'Épernay à Vertus, domaine d'élection du chardonnay?; la Côte des Bar, dans l'Aube, principalement plantée en pinot noir. Le terroir bénéficie d'un socle crayeux dont la perméabilité et la richesse en principes minéraux apportent de la finesse aux vins, un sous-sol qui a permis en outre le creusement de caves souterraines favorables au bon vieillissement des champagnes. Par ailleurs, si le gel rend difficile la régularité de la production –&nbsp;la Champagne est située à la limite septentrionale de la culture de la vigne&nbsp;–, les écarts climatiques sont tempérés par la présence de massifs forestiers qui équilibrent la douceur atlantique et la rigueur continentales. Et l'absence d'excès de chaleur est un autre atout pour la finesse des vins.",
        history: "Si l'on fait du vin en Champagne au moins depuis l'invasion romaine, le champagne tel que nous le connaissons aujourd'hui a été créé au XVII e&nbsp;siècle, de façon empirique. En effet, le vin avait alors la fâcheuse tendance à mousser dans les tonneaux. C'est sans doute en Angleterre que l'on inventa la mise en bouteille systématique de ces vins instables qui, jusqu'en 1700 environ, étaient livrés en fût. Cela eut pour effet de permettre au gaz carbonique de se dissoudre dans le vin&nbsp;: l'effervescent était né. Moine chargé de la cave de l'abbaye de Hautvillers, Dom Pérignon est considéré comme «&nbsp;le père du Champagne&nbsp;». Il produit en effet les meilleurs vins de l'époque, grâce à sa fine connaissance des terroirs, son souci de qualité de la vendange et de son pressurage rapide après la récolte, et sa maîtrise de l'assemblage. C'est aussi lui qui les vend les plus chers. En 1728, le conseil du roi autorise le transport du vin en bouteilles?; un an plus tard, la première maison de négoce est fondée (Ruinart). Mais c'est au XIX e&nbsp;siècle que la plupart des grandes maisons se créent ou s'affirment. Au final, ce sont trois siècles de perfectionnement qui ont permis de mettre au point la méthode champenoise, ou la double fermentation en bouteille. Si le phylloxéra puis les deux guerres mondiales ont ravagé le vignoble, la Champagne s'affirme comme l'une des principales régions viticoles de France, produisant quelque 300&nbsp;millions de bouteilles par an, dont une grande partie est exportée partout dans le monde."
    )

    static let `A05D2F6D-2601-4BE1-B8EC-8EC234CB92F4` = DefaultWineVineyard(
        id: UUID(uuidString: "A05D2F6D-2601-4BE1-B8EC-8EC234CB92F4")!,
        description: "Ce vignoble immense s'étale le long du littoral méditerranéen, de Leucate, à l'ouest, jusqu'à Nîmes et la Camargue, à l'est, puis couvre les contreforts des Cévennes aux portes de Carcassonne. Il parcourt trois départements : l'Aude, le Gard et l'Hérault. Il offre une diversité de paysages et une mosaïque de terroirs entre mer et montagne (Corbières), sous influence climatique méditerranéenne, à l'origine d'une vaste palette de vins rouges, blancs et rosés, de vins doux naturels et d'effervescents. Des vins, qui après avoir été longtemps assimilés à la viticulture de masse, font l'objet d'un renouveau constant depuis près de trente ans.",
        name: "Languedoc",
        soilAndClimate: "Les aires de production offrent des situations très variées selon l'altitude, la proximité de la mer, l'établissement en terrasses ou en coteaux, les sols et terroirs. On distingue ainsi une zone montagneuse, une plaine côtière, une zone de garrigue et une autre de piémont. Une diversité qui fait aussi l'originalité du vignoble&nbsp;: abruptes falaises blanches de la Clape, paysage de montagne au Pic-Saint-Loup, douces pentes de Picpoul-de-Pinet, terrasses du Larzac... C'est le climat méditerranéen qui assure l'unité du Languedoc, un climat chaud et sec, à pluviométrie faible et très irrégulière, renforcé par des vents soufflant de la terre (mistral, tramontane), ceux venant de la mer apportant une humidité salutaire.",
        history: "C'est aux Grecs que l'on doit l'implantation de la vigne, dès le VIII e&nbsp;siècle av. J.-C., autour de Narbonne. Avec les Romains, le vignoble du Languedoc se développe rapidement, allant même jusqu'à concurrencer le vignoble romain&nbsp;: l'empereur Domitien ordonne alors, en l'an&nbsp;92, l'arrachage de la moitié des surfaces. Probus annule ce décret en 270?; le vignoble languedocien renaît. Au Moyen Âge, il connaît une période de grande prospérité sous l'influence des monastères et des abbayes. Le commerce du vin continue de s'étendre avec notamment, aux XVIII e et XIX e&nbsp;siècles, l'amélioration des infrastructures portuaires (création du port de Sète, ouverture du canal du Midi). La création du chemin de fer entre 1850 et 1880 assure le développement de nouveaux marchés dont les besoins sont satisfaits par l'abondante production de vignobles reconstitués après la crise phylloxérique. C'est alors l'époque de la viticulture de masse, intensive et de mauvaise qualité, qui ne déclinera qu'à partir du milieu du XX e&nbsp;siècle?; une période marqué par de nombreuses crises, comme la révolte vigneronne de 1907. La reconnaissance des vignobles languedociens en VDQS (1949) puis en AOC, par étapes, a permis un renouveau. Grâce à ses bons terroirs en coteaux et au retour des cépages traditionnels, le Languedoc viticole produit aujourd'hui des vins de grande qualité."
    )

    static let `6615FA6F-E0B1-4C2F-9A53-DC14F33BABF4` = DefaultWineVineyard(
        id: UUID(uuidString: "6615FA6F-E0B1-4C2F-9A53-DC14F33BABF4")!,
        description: "Le Beaujolais étend son vignoble sur 50 km de long et 15 km de large à l'est de la Saône, entre Mâcon au nord et Lyon au sud. S'il est légalement rattaché à la Bourgogne viticole, il s'en distingue à plus d'un titre. Par son paysage, jeu varié de douces collines et de vallons, par ses terroirs de sable et de roches anciennes, par son encépagement et la domination quasi sans partage des vins rouges issus de gamay, enfin par ses méthodes de culture et de vinification.",
        name: "Beaujolais et Lyonnais",
        soilAndClimate: "La vigne prospère en hauteur, les meilleurs terroirs étant situés entre 190 et 350&nbsp;m. De part et d'autre d'une ligne imaginaire passant par Villefranche-sur-Saône, on distingue traditionnellement le Beaujolais Nord du Beaujolais Sud. Le premier offre un relief plutôt doux aux formes arrondies, aux sols de sables et de roches anciennes (granite, porphyre, schiste, diorite), terroirs privilégiés des crus et des beaujolais-villages. Le sud est marqué par un relief un peu plus vallonné et offre des sols plus riches en calcaire et en grès. C'est aussi la zone de l'AOC beaujolais. Quant au climat, il est tempéré, résultat de trois tendances différentes (continentale, océanique et méditerranéenne) qui peuvent dominer chacune le temps d'une saison. Dans l'ensemble, le vignoble profite d'un bon ensoleillement propice à une bonne maturation.\n\nL'AOC coteaux-du-lyonnais se caractérise par une succession de vallées de 250&nbsp;m d'altitude et de collines atteignant 500&nbsp;m, par des sols variés (granite, roches métamorphiques, limons, alluvions...) et par un climat aux influences méditerranéennes plus prononcées que dans le Beaujolais.",
        history: "Si la viticulture existe à l'époque romaine, c'est au XVII e&nbsp;siècle qu'elle s'est véritablement développée, en particulier autour des villes de Beaujeu, Morgon, Bonnay et Montagny. Les sires de Beaujeu ont assuré l'expansion et la prospérité de leurs domaines, stimulés en cela par la puissance de leurs voisins, les comtes de Mâcon et du Forez, les abbés de Cluny et les archevêques de Lyon. Après la Seconde Guerre mondiale, le succès du beaujolais nouveau renforce encore celui des vins de la région. Aujourd'hui, le vignoble s'étend sur 23&nbsp;000&nbsp;ha et produit environ un million d'hectolitres.\n\nQuant au vignoble du Lyonnais, il connaît une période faste à la fin du XVI e&nbsp;siècle, religieux et riches bourgeois favorisant la culture de la vigne. Mais la crise phylloxérique et l'expansion de l'agglomération lyonnaise ont réduit la zone de production à quelques îlots répartis sur 49&nbsp;communes."
    )

    static let `54B5492A-7290-4DF3-BD40-E97186CEFCF9` = DefaultWineVineyard(
        id: UUID(uuidString: "54B5492A-7290-4DF3-BD40-E97186CEFCF9")!,
        description: "Le vaste vignoble provençal s'étend sur près de 200 km de long, d'est en ouest, de Nice au sud d'Avignon, et sur 60 km de large entre les Alpilles et la Méditerranée. Aux côtés des pins et des oliviers, la vigne occupe des îlots très diversifiés, et si l'on trouve les trois couleurs de vins dans ce pays de soleil et de vents, c'est le rosé qui règne en maître.",
        name: "Provence",
        soilAndClimate: "Le vignoble provençal est très morcelé, la géopédologie très diversifiée et le relief offre des zones fort contrastées, tant au niveau des sols que des microclimats. L'on distingue néanmoins deux grandes zones. à l'ouest et au nord, on trouve collines et barres calcaires sculptées par l'érosion, dans un environnement de garrigue (montagne Sainte-Victoire, massif de la Sainte-Beaume). à l'est, face à la Méditerranée, les massifs cristallins des Maures et du Tanneron accueillent un relief plus doux de collines aux courbes rondes où règne le maquis. Plus à l'est encore, la Côte d'Azur prolonge cette zone cristalline avec des trouées volcaniques aux roches surprenantes comme les porphyres colorées du massif de l'Estérel. Les sols sont en général pauvres, bien drainés et peu profonds, sans excès d'humidité&nbsp;: des terroirs propices à l'épanouissement de la vigne. Quant au climat, le mistral apporte un air rafraîchissant à l'une des régions les plus chaudes de France, avec de rares mais très violentes précipitations.",
        history: "Si, 600&nbsp;ans avant J.-C., les Phocéens débarquant à Marseille ont déjà multiplié les plants de lambrusques, ce sont les Romains, au II e&nbsp;siècle, qui vont développer la culture de la vigne dans la Provincia Romana. Du V e au XII e&nbsp;siècle, les moines (abbayes de Saint-Victor à Marseille, Saint-Honorat sur les îles de Lérins...) vont poursuivre et améliorer l'œuvre romaine, relayés par les nobles, à partir du XIV e&nbsp;siècle, à l'image du roi-vigneron René d'Anjou, comte de Provence au XV e&nbsp;siècle, qui acquièrent de nombreux domaines et posent les fondations de la Provence viticole moderne. Éléonore de Provence, épouse d'Henri III, roi d'Angleterre, donne aux vins de Provence un grand renom. Mais les siècles suivants voient souffrir le vignoble&nbsp;: éloignement des grands axes de communication, crise du phylloxéra en 1880, surproduction privilégiant la quantité à la qualité au début du XX e&nbsp;siècle. Mais la filière s'organise (mouvement coopératif) et les premières AOC apparaissent dans les années 1930 (cassis en 1936). Ces efforts et le développement du tourisme remettent les vins provençaux à l'honneur, les rosés en tête (38?% de la production nationale et 8?% de la production mondiale)."
    )

    static let `C7E9EFD0-F5EF-4774-B8DE-6C5387207035` = DefaultWineVineyard(
        id: UUID(uuidString: "C7E9EFD0-F5EF-4774-B8DE-6C5387207035")!,
        description: "Le vignoble alsacien est un long ruban de 170 km de long, situé au pied du massif vosgien, qui s'étire de Marlenheim au nord à Thann au sud, complété par un îlot viticole à la limite de l'Allemagne, autour de Wissembourg et de Cleebourg. Les nombreuses sinuosités du relief et la variété des sols permettent à cette région de proposer une vaste gamme de vins comme des vins d'Alsace secs et doux, tranquilles et effervescents. Mais grâce à son climat tempéré et frais, le principal atout du vignoble Alsacien réside dans la maturation optimale des raisins blancs, le pinot noir étant l'exception. L'identification des vins par leur cépage – riesling, gewurztraminer, sylvaner. . .  – est l'une des autres spécificités alsaciennes, ainsi que la présence de grands crus qui font la réputation des vins d'Alsace.",
        name: "Alsace",
        soilAndClimate: "## Sols et Climats des&nbsp;vins d'Alsace\n\n&nbsp;\n\nLa plus grande partie du **vignoble Alsacien** est sur les collines qui bordent le massif des **Vosges** et qui prennent pied dans la **plaine rhénane**. Les **Vosges**, dressées entre **l'Alsace** et le reste du pays, donnent à la région son **climat spécifique**, à savoir une **pluviométrie parmi les plus faibles de France** (500 à 600&nbsp;mm d'eau par an) et des **températures élevées l'été.** Mais ce sont surtout les **différents microclimats**, nés des multiples sinuosités du relief, qui jouent un rôle prépondérant dans la **répartition** et la **qualité des vignobles.** On trouve aussi ici une **grande variété de sols&nbsp;**:\n\nmarno-calcaires ;\n\narènes granitiques ;\n\nmarnes schisteuses ;\n\nmarnes caillouteuses...\n\n&nbsp;",
        history: "## Histoire des vins d'Alsace\n\n&nbsp;\n\nL'histoire du **vignoble alsacien** remonte probablement à **l'époque romaine**. Si l'invasion des Germains au V e&nbsp;siècle entraîna un déclin passager de la viticulture, celle-ci s'est rapidement développée sous l'influence des évêchés, des abbayes et des couvents. **Au IX e&nbsp;siècle,** on recense plus de **160&nbsp;localités où la vigne est cultivée**. Cette expansion se poursuit sans interruption jusqu'au **XVI e&nbsp;siècle.** Les nombreuses maisons de style **Renaissance **aux larges porches et pignons témoignent de cet âge d'or. Si la funeste guerre de **Trente Ans (1618-1648)** a des** conséquences néfastes sur la viticulture alsacienne**, celle-ci reprend son essor au siècle suivant, fondé sur des **cépages communs**. En **1828**, le vignoble s'étend ainsi sur** 30&nbsp;000&nbsp;ha.** Mais la concurrence des vins du **Midi** et le **phylloxéra** dans la seconde moitié du **XIX e&nbsp;siècle** puis les guerres mondiales du **XX e&nbsp;siècle** entraînent un long processus de **déclin**&nbsp;: en **1948**, le vignoble Alsacien ne compte plus que **9&nbsp;500&nbsp;ha.** Le vignoble Asacien s'étend aujourd'hui sur plus de **15&nbsp;000&nbsp;ha** et produit environ 1,2&nbsp;millions d'hectolitres de vin d'Alsace par an, **un quart des ventes de vin d'Alsace se faisant à l'export.**"
    )

    static let `F51CB6E3-D7D3-4A45-9FA6-95BF30586181` = DefaultWineVineyard(
        id: UUID(uuidString: "F51CB6E3-D7D3-4A45-9FA6-95BF30586181")!,
        description: "Du lac Léman au sud de Chambéry, le vignoble savoyard occupe les premières pentes alpines, entre 300 et 600 m. Entre lacs, alpages, chalets et vergers, les vignes forment une mosaïque complexe de microclimats et de terroirs aux caractères montagnards plus ou moins accentués, où s'épanouissent une multitude de cépages, majoritairement blancs. Le vignoble du Bugey, quant à lui, s'étend sur les éboulis calcaires abrupts du département de l'Ain. On y produit des vins rouges, rosés et blancs, ainsi que le fameux rouge effervescent de Cerdon.",
        name: "Savoie et Bugey",
        soilAndClimate: "Du lac Léman à la vallée de l'Isère, dans les départements de la **Savoie** et de la **Haute-Savoie,** de l'Isère et de l'Ain, le vignoble des vins de Savoie occupe les basses pentes favorables des Alpes le long des vallées. Il est constitué d'une mosaïque complexe de terroirs diversifiés, établie en îlots plus ou moins étendus. Une diversité géographique à laquelle font écho les variantes climatiques, les caractères montagnards étant accentués par le relief ou tempérés par le voisinage du lac Léman et de celui du Bourget.",
        history: "La culture de la **vigne en****Savoie** remonterait aux Allobroges, selon les écrits de Pline et Columelle. Au Moyen Âge, les moines étendent le vignoble aux versants pentus des Alpes et aux plaines fertiles, ce jusqu'au XIX e&nbsp;siècle. Comme les autres **vignobles** français, ceux de **Savoie et du Bugey** souffrent du phylloxéra à la fin du XIX e&nbsp;siècle. Bien que replantés dans les années 1890, sur une surface plus modeste, ils ne sont véritablement reconnus qu'après la Seconde Guerre mondiale. La modernisation des méthodes de **culture** et de **vinification** et la maîtrise des rendements provoquent un **saut qualitatif des vins de Savoie**, un essor accentué par le développement du tourisme hivernal. Mais si la **production viticole des vins de Savoie** est en progression depuis les années 1980, le **nombre de viticulteurs et de petites exploitations a tendance à décroître.**"
    )

    static let `7C95C11D-CA13-4CC9-B3D6-C19079D8D712` = DefaultWineVineyard(
        id: UUID(uuidString: "7C95C11D-CA13-4CC9-B3D6-C19079D8D712")!,
        description: "Le plus méridional des vignobles français, implanté dans la Catalogne (département des Pyrénées orientales) est un vaste amphithéâtre cerné de massifs montagneux, une sorte d'île terrestre, bordé au nord par les Corbières, par le massif du Canigou à l'ouest, par les Albères au sud et, à l'est, par la Côte Vermeille et ses vignobles plongeant dans la Méditerranée. Il est réputé pour ses vins doux naturels.",
        name: "Roussillon",
        soilAndClimate: "Le vignoble du Roussillon est bordé par trois massifs (Corbières, Canigou et Albères) et traversé par trois fleuves (la Têt, le Tech et l'Agly) qui ont modelé un relief de terrasses et de coteaux&nbsp;aux sols variés&nbsp;: schistes noirs et bruns, arènes granitiques, argilo-calcaires... Le climat est particulièrement ensoleillé, avec des températures clémentes en hiver et chaudes en été. La pluviométrie est mal répartie et les pluies d'orage ne profitent guère à la vigne. Il s'ensuit une période estivale sèche, dont les effets sont souvent accentués par la tramontane, qui favorise la maturation des raisins.",
        history: "Implantée dès le VII e&nbsp;siècle av. J.-C., la vigne se développe au Moyen Âge, vins doux naturels et rouges corpulents offrant alors au Roussillon une solide réputation. Au XIX e&nbsp;siècle, le vignoble s'étend fortement avant de connaître la crise phylloxérique qui le détruit en partie. Replanté progressivement, il quitte les plaines pour rejoindre les coteaux. Dans la première moitié du XX e&nbsp;siècle se développe une production de masse de vins peu qualitatifs, destinés surtout au coupage avec les vins d'Afrique du Nord. Avec l'apparition des AOC dans les années 1930 pour les vins doux naturels, débute une politique de qualité qui aboutit à la reconnaissance des appellations côtes-du-roussillon et côtes-du-roussillon-villages dans les années 1970."
    )

    static let `42AC7A4C-41E5-4E83-B104-5C9C15EB5291` = DefaultWineVineyard(
        id: UUID(uuidString: "42AC7A4C-41E5-4E83-B104-5C9C15EB5291")!,
        description: "Jouissant d'une renommée internationale, le Bordelais constitue le plus vaste vignoble d'appellation de France et l'un des plus prestigieux grâce à ses célèbres crus classés. Ce vignoble contrasté aux sols variés s'organise autour de trois axes fluviaux : la Garonne, la Dordogne et leur estuaire commun, la Gironde.",
        name: "Bordelais",
        soilAndClimate: "## Le vignoble bordelais\n\n&nbsp;\n\nLe vignoble bordelais s'organise autour de la **Garonne**, de la **Dordogne** et de l'**estuaire de la Gironde**. Ces axes fluviaux créent des conditions idoines pour le développement de la vigne&nbsp;: **coteaux bien exposés** et **régulation des températures**. \n\nLe **climat océanique** est relativement tempéré et le vignoble protégé de l'océan par la forêt de pins. En outre, la région connaît des automnes réputés pour leur ensoleillement qui ont plus d'une fois sauvé in extremis de nombreux millésimes.\n\nLes **sols** sont **de nature très diverse** (graves favorables au **cabernet-sauvignon**, argiles propices au **merlot**, calcaires à astéries, limons, sables...) et donnent naissance à une **vaste gamme de vins**.",
        history: "## Histoire du vin bordelais\n\n&nbsp;\n\nSi la vigne est apparue en Gironde au Ier&nbsp;siècle de notre ère, c'est véritablement au **XIIe&nbsp;siècle**que les vins bordelais prennent leur essor&nbsp;: le mariage d'**Aliénor****d'Aquitaine** avec Henri Plantagenêt, futur roi d'Angleterre, favorisa l'exportation des **clarets **vers le **marché britannique**. \n\nAu**XVIIe&nbsp;siècl**e, la clientèle s'élargit aux **Hollandais**, qui encouragent la production de **vins blancs liquoreux** ; et apparaissent à cette époque la **mise en bouteille** et le **vieillissement du vin**.\n\nAu **XVIIIe&nbsp;siècle**, le goût des Anglais évolue vers des vins plus fins (les *New French Clarets*), les viticulteurs perfectionnent leurs méthodes de production et la **relation terroir-château-grand vin** se met en place.\n\nLe prestige des** grands vins de Bordeaux** ne cesse de croître et débouche en **1855**sur le **classement des crus du&nbsp;Médoc et du Sauternais**. Parallèlement, le commerce s'étend grâce aux lignes de chemin de fer Paris-Bordeaux et Bordeaux-Marseille et à l'instauration du libre-échange.\n\nAprès cette période faste, le vignoble est profondément affecté par le **mildiou**&nbsp;et le **phylloxéra,** par les crises économiques et les guerres mondiales.\n\n**De 1960 à la fin des années 1980**, le vin de Bordeaux connaît un regain de prospérité, notamment grâce aux progrès de l'**œnologie** et à une remarquable amélioration de la qualité, renforcée par des **millésimes d'exception** (1961, 1962, 1989, 1990...). De grands groupes français et étrangers investissent dans le vignoble.\n\nSi à la** fin des années 1990**, le marché connaît conjoncturellement des difficultés liées à la concurrence mondiale, le Bordelais demeure l'un des **principaux vignobles du monde**, et les nouveaux marchés en **Asie** ouvrent d'intéressantes perspectives."
    )

    static let `43D8CCB3-4E6A-47F0-A4E5-627FBE273799` = DefaultWineVineyard(
        id: UUID(uuidString: "43D8CCB3-4E6A-47F0-A4E5-627FBE273799")!,
        description: "Un vignoble historique, l'un des plus anciens de France, modelé au Moyen Age par les moines, puis les Ducs de Bourgogne, et riche de domaines aux apparences souvent modestes, mais de grand prestige.  Les vins de Bourgogne sont appréciés pour leur élégance, leur complexité et leur capacité à s'améliorer avec le temps.",
        name: "Bourgogne",
        soilAndClimate: "La Bourgogne est située dans le Nord-Est de la France, et bénéficie d'un climat tempéré avec des influences océaniques et continentales. Le climat est idéal pour la culture de la vigne, car il offre des conditions optimales pour les cépages de la région, tels que le Chardonnay, le Pinot Noir et le Gamay.&nbsp;Les **hivers sont doux** et les** étés relativement frais**&nbsp;ce qui assure une **maturation lente et uniforme des raisins,** permettant aux vins de développer des **arômes complexes.**&nbsp;La région est **protégée des grands vents dominants** par les montagnes de la** Côte d'Or,** ce qui assure aux vignobles des conditions climatiques **stables** et **favorables**.&nbsp;Si le climat bourguignon, globalement **semi-continental** avec des **nuances** dues aux reliefs et à la présence de cours d'eau, ce sont les **sols** qui donnent leur caractère propre aux **très nombreux vins de Bourgogne.&nbsp;**\n\nL'extrême **morcellement **des parcelles est la règle partout, fondé sur une **juxtaposition d'affleurements géologiques variés&nbsp;**: la** structure géologique** des sols bourguignons est ainsi comparable à un **millefeuille**, résultat de nombreux **soulèvements et effondrements naturels **survenus depuis l'ère primaire. \n\nCes innombrables cassures ont donné naissance à une **très grande diversité des terroirs,** ou **climats***,* et donc des crus de Bourgogne. On peut alors constater qu'il y a parfois moins de différences entre deux vignes séparées de plusieurs centaines de mètres mais à l'intérieur du même climat qu'entre deux vignes voisines mais plantées dans deux climats différents.",
        history: ""
    )

    static let `B687A3E4-6D2B-4D19-B27B-52882F2CCDEA` = DefaultWineVineyard(
        id: UUID(uuidString: "B687A3E4-6D2B-4D19-B27B-52882F2CCDEA")!,
        description: "Petit état prospère au coeur de l'Union Européenne, le Luxembourg est un pays viticole à part entière. Sa production, confidentielle mais qualitative, est composée majoritairement de vins blancs. les plus belles cuvées sont issues du riesling et du pinot gris, avec de belles surprises également en crémant.",
        name: "Luxembourg",
        soilAndClimate: "Sur 42 km, de Scengen à Wasserbillig, les coteaux de la rive gauche de la Moselle forment un cordon continu de vignobles, autour des cantons de remich et de Grevenmacher.&nbsp;S Orientés au sud et au sud-est, ces vignobles profitent de l'effet bienfaisant des eaux de la Moselle et atténuent la chaleur du soleil de l'été. En raison de leur laitude septentrionale, ils produisent presque exclusivement des vins blancs.",
        history: "Longtemps producteur de vins ordinaires, le Luxembourg s'est orienté vers une politique de production de vins de qualité depuis les années 1930. &nbsp;La marque nationale des vins de la Moselle Luxembourgeoise a été créee dans le but d'encourager la qualité, sous la garantie officielle de l'état. l'AOC moselle luxembourgeoise est apparue en 1985 et en 1991, l'appellation crémant-de-luxembourg. Il existe aussi une hiérarchie des vins du Luxembourg &nbsp;(marque nationale, appellation contrôlée, vin classé, premier cru, grand cru). &nbsp;le classement des vins se fait en fonction de leur notaton lors de chaque agrément : les vins notés entre 18 et 20 points sont classifiés grands premiers crus, ceux qui obtiennent entre entre 16 et 17,9 sont des premiers crus...etc. Les viticulteurs peuvent produire depuis 2001 des vins de vendanges tardives, des vins de glace et des vins de paille.&nbsp;"
    )

    static let `2351EA57-D261-494B-98A4-3EE6E2379A5B` = DefaultWineVineyard(
        id: UUID(uuidString: "2351EA57-D261-494B-98A4-3EE6E2379A5B")!,
        description: "Vaste et varié, le vignoble du Sud-Ouest couvre quatre zones principales : le piémont du Massif Central, la moyenne Garonne, le Bergeracois et Duras, et le piémont pyrénéen. Les vignobles du Sud-Ouest devrait-on dire : on en recense plus d'une vingtaine, avec des terroirs, des cépages et des histoires distinctes. Le point commun entre les appellations, aussi éloignées qu'irouléguy, gaillac ou marcillac, réside dans des vins de caractère et dans une incomparable palette de cépages locaux (manseng, tannat, négrette, loin-de-l'œil. . . ).",
        name: "Sud-Ouest",
        soilAndClimate: "à l'est, le vignoble du piémont du Massif Central, dont les principales appellations sont gaillac et cahors, est planté sur les terres sédimentaires du bassin aquitain, de même que les vignobles de l'Aveyron, petits et pentus. La Moyenne Garonne, entre Fronton et Marmande, comprend une douzaine de vignobles implantés sur les terrasses de la rive gauche du Tarn et de la Garonne, sous un climat océanique tempéré. Le Bergeracois, concentré autour de la ville de Bergerac, prolonge naturellement le Libournais et son climat océanique, tempéré par quelques influences continentales?; le vignoble de Duras étant quant à lui dans le prolongement de l'Entre-deux-Mers. Le Piémont pyrénéen (madiran, jurançon...), la chaîne de montagne en arrière-plan, est irrigué par l'Adour et ses affluents et soumis à la double influence climatique de l'Atlantique et des Pyrénées.",
        history: "Jusqu'à l'apparition du rail, les vignobles de la Garonne et de la Dordogne ont vécu sous l'autorité bordelaise. Fort de sa position géographique et des privilèges royaux, le port de la Lune dicte sa loi aux vins de Duras, de Buzet, de Fronton, de Gaillac et de Bergerac. Tous doivent alors attendre que la récolte bordelaise soit entièrement vendue aux amateurs d'outre-Manche et aux négociants hollandais avant d'être embarqués, quand ils ne sont pas utilisés comme vins «&nbsp;médecins&nbsp;» pour remonter certains clarets. De leur côté, les vins du piémont pyrénéen ne dépendent pas de Bordeaux mais sont soumis à une navigation hasardeuse sur l'Adour avant d'atteindre Bayonne. Leur renommée n'a dès lors que peu dépassé le voisinage immédiat. Nombre de ces vignobles ont été créés par des monastères aux X e et XI e&nbsp;siècles, en liaison avec le pèlerinage de Saint-Jacques-de-Compostelle, et se sont développés aux XVII e et XVIII e&nbsp;siècles grâce aux négociants hollandais qui favorisent l'exportation de vins doux et d'eaux-de-vie."
    )

    static let `912F47F6-62A9-42CE-8CAC-FDF1CB42C304` = DefaultWineVineyard(
        id: UUID(uuidString: "912F47F6-62A9-42CE-8CAC-FDF1CB42C304")!,
        description: "La très étendue région viticole de la vallée de la Loire est unie par le fleuve que l'on dit royal et ses affluents, la vigne n'étant jamais bien éloignée de l'eau et des châteaux Renaissance. Les vignobles du pays nantais, de l'Anjou et du Saumurois, de la Touraine et du Centre forment ainsi un vaste ensemble aux terroirs et aux climats variés, où la plupart des types de vins sont déclinés.",
        name: "Vallée de la Loire et Centre",
        soilAndClimate: "Planté sur le** Massif armoricain**, le vignoble du pays nantais, aire du **muscadet** et d'une partie de **l'Anjou,** est vallonné et bénéficie d'un climat **océanique.** La zone de **l'Anjou** et du **Saumurois** propose un climat **atlantique,** avec de **grandes variations d'ensoleillement et de pluies** selon les années. On distingue l'**Anjou blanc** (Saumurois), ses sols **crayeux** (tuffeau), et l'**Anjou noir,** ses sols de **schistes** et autres roches primaires du **Massif armoricain.** Plus à l'est, on trouve le vignoble de **Touraine,** succession de **vallées** et de **coteaux** sous influence **océanique** et **continentale,** bénéficiant d'une **saine humidité.** Dans les sols, se mêlent **argile, calcaire, sable** et parfois **silex** ou **graviers.** Enfin, les vignobles du&nbsp;**Centre** se distinguent par leurs sols **jurassiques,** voisins de ceux du **Chablisien**&nbsp;pour **Sancerre**&nbsp;et **Pouilly-sur-Loire,** et leur climat **semi-continental**, aux hivers froids et aux étés chauds. On rattache également les vignobles de **Saint-Pourçain**, des **côtes roannaises**&nbsp;et du **Forez** à cet ensemble.",
        history: "Comme dans nombre d'autres régions viticoles françaises, la vigne a été introduite ici par les **Romains.** Là aussi, les **moines** – augustins et bénédictins – ont développé le vignoble au **Moyen Âge**, le long des voies romaines et de la **Loire** et ses affluents&nbsp;: des voies de communication essentielles pour la commercialisation des vins de Loire. Et c'est ainsi à l'époque médiévale que bien des crus de la **Loire** et du **Centre** ont vu leur **réputation accroître,** à l'image des vins de **Saint-Pourçain, de l'Anjou, de l'Orléanais ou de la Touraine.**"
    )

    static let `44A1E4F8-611B-4FE3-887F-C6B34304BBD1` = DefaultWineVineyard(
        id: UUID(uuidString: "44A1E4F8-611B-4FE3-887F-C6B34304BBD1")!,
        description: "L'un des plus anciens vignobles de France et la seconde région viticole de l'Hexagone après le Bordelais, traversé par le Rhône, fleuve fougueux qui file vers le Midi et voit fleurir la vigne sur chaque rive.",
        name: "Vallée du Rhône",
        soilAndClimate: "On distingue traditionnellement **deux zones aux visages bien différents **: la vallée du Rhône septentrionale, au nord de Valence, et la vallée méridionale, au sud de Montélimar, deux secteurs séparés l'un de l'autre par une cinquantaine de kilomètres vierges de vigne.\n\nDans la **partie septentrionale**, la vallée s'encaisse entre Alpes et Massif central, offrant un climat tempéré, sous influence continentale, avec des **coteaux très pentus** et des sols granitiques ou schisteux.\n\nDans la **partie méridionale**, la vallée s'élargit et on arrive en **Provence.** Le climat y est **méditerranéen**, fortement influencé par le Mistral, vent sec et violent qui contribue au bon état sanitaire des raisins. Les sols y sont variés&nbsp;: terrasses de galets roulés, sols argilo-graveleux, molasses et sables.\n\nA l'est de Montélimar, dans la haute Vallée de la Drôme, le **Diois**se distingue par ses sols calcaires et son climat montagneux et frais influencé par l'altitude.",
        history: "C'est aux abords de Vienne que se trouve l'un des plus anciens vignobles de France, développé par les **Romains**, après avoir été sans doute créé par les **Phocéens** de Marseille. Vers le IVe&nbsp;siècle av. J.-C., la culture de la vigne est attestée dans les secteurs des actuels&nbsp;**hermitage** et** côte-rôtie**. Elle apparaît dans le Diois au début de l'ère chrétienne.\n\nAu XIIe&nbsp;siècle, les **Templiers** plantent les premières vignes à **Châteauneuf-du-Pape.** Au XIVe siècle, l'installation des**papes en Avignon**constitue une étape marquante dans l'histoire du vignoble rhodanien. Jean XXII fait ainsi construire la forteresse crénelée à l'origine du nom de **Châteauneuf-du-Pape**&nbsp;et développe le vignoble dans le Comtat venaissin. La notoriété des vins castelapapaux, modeste à l'origine, grandit aux XVIIe et XVIIIe siècles.\n\nUne réputation telle qu'une réglementation protège alors leur authenticité : les cités de Tavel et des environs édictent en 1731 des règles de production et apposent les** initiales CDR («&nbsp;côtes-du-rhône »)** sur leurs tonneaux, une anticipation de l'AOC.\n\nSi le vignoble a souffert du **phylloxéra** à partir des années 1860, il s'est redressé de belle manière dans les années 1930, notamment sous l'impulsion du **Baron Le Roy**, propriétaire à Châteauneuf-du-Pape et considéré comme l'un des **pères des appellations d'origine contrôlée**, à l'origine de la reconnaissance de l'AOC châteauneuf dès 1936, l'une des premières de France, suivie de près par les côtes-du-rhône (1937) et d'autres crus rhodaniens.\n\nDans le nord de la Vallée, les vignobles, difficiles à cultiver, ont été délaissés avant de renaître grâce à la **coopérative de Tain-l'Hermitage** dans les années 1930, puis dans les années 1980 grâce à une nouvelle génération de vignerons et de négociants (Guigal, Chave, Chapoutier, Cuilleron...) qui leur ont redonné tout leur lustre.\n\nAssimilés au début du XXe&nbsp;siècle à des vins de comptoirs, les vins rhodaniens, du nord comme du sud, sont aujourd'hui **parmi les plus renommés du vignoble français**. Le visage du vignoble s'est **diversifié** (des vins légers aux grands vins de garde), et la vallée du Rhône constitue **le second vignoble français d'AOC** en superficie et en production."
    )

    static let `901E6AA6-5C97-4257-BA47-7EC061E4DA19` = DefaultWineVineyard(
        id: UUID(uuidString: "901E6AA6-5C97-4257-BA47-7EC061E4DA19")!,
        description: "Obligatoirement accompagné d’une délimitation géographique ( IGP Val de Loire, par exemple), ce terme désigne des vins liés à un territoire, mais dont le rapport au terroir est moins fort que pour les vins d'appellations d'origine contrôlée. En outre, les conditions d’élaboration sont plus souples que pour les AOC, même si un cahier des charges précit régit les communes concernées, les cépages et types de vins.",
        name: "Pays",
        soilAndClimate: "## Il existe trois catégories d'IGP d’extension variable (voir carte)&nbsp;:\n\nIGP régionales&nbsp;: six grandes zones regroupant plusieurs départements, le Pays d’Oc étant de loin le pourvoyeur numéro un de la catégorie.\n\nIGP de département, portant le nom d’un département parfois légèrement modifié.\n\nIGP de zone plus restreinte, de superficie variable, limitée parfois à quelques communes## Des vins produits en majorité dans le Sud de la France.\n\nLa zone des **Pays d'Oc**, qui correspond peu ou prou avec le Languedoc Roussillon en produit la grande majorité.&nbsp;C’est la championne des vins de cépage : son cahier des charges en admet cinquante-six. À côté des variétés régionales (grenache, cinsault, syrah, muscats), elle propose les cépages les plus en vogue sur les marchés extérieurs (cabernet-sauvignon, merlot, pinot noir, chardonnay, sauvignon, viognier).\n\nCôté ouest, ce sont les** côtes de Gascogne** qui livrent les principaux volumes, des blancs en majorité. Ces vins de pays permettent notamment aux vignerons de l’armagnac de diversifier leur production, avec notamment des vins de colombard et/ou sauvignon frais et fruités, et à tous les producteurs de mettre en avant les cépages locaux, comme le petit manseng ou le malbec. Le Val de Loire fournit des vins de cépages de la région (gamay, cabernet franc, cot, grolleau, sauvignon&hellip;) et du chardonnay. Quant aux **Charentes** et à l’**Aquitaine**, si leur production n’est pas négligeable, elle est minime par rapport à l’ensemble, tandis qu’elle est marginale en Alsace, en Bourgogne et en Champagne.\n\n&nbsp;## &nbsp;\n\n## D",
        history: "Les vins autrefois nommés &#34vins de table avec indication de la zone de production&#34 devinrent vins de pays à la fin des années 1960, dans le contexte de la crise des vins de table.\n\nLa réforme européenne de 2008 en fit des vins en IGP, catégorie qui existait déjà ( et existe toujours) pour d'autres produits alimentaires ancrés dans un territoire géographique ( rillettes du mans, gâche vendéenne...).\n\nLes nouveaux cahiers des charges rédigés en&nbsp;2011 permettent en IGP une production plus diversifiée&nbsp;: par exemple vins mousseux de qualité et localement vins surmûris, paillés, ou encore, dans le Roussillon, des rancios secs. Enfin, si l’offre en IGP est souvent orientée vers la production de vins issus de cépages bien connus, cette catégorie permet de faire renaître des variétés d’antan, comme le prunelard du Gaillacois, ou des vignobles oubliés, comme ces petits arpents de la vallée de la Dives (Calvados), le vignoble de Rocamadour (Lot) ou celui de Domme (Périgord).\n\n&nbsp;"
    )
}

extension DefaultWineRegion {
    static let `2DF79C95-FCF4-409E-9EA9-16F1CB3B5528` = DefaultWineRegion(
        id: UUID(uuidString: "2DF79C95-FCF4-409E-9EA9-16F1CB3B5528")!,
        name: "Alsace",
        vineyard: DefaultWineVineyard.`C7E9EFD0-F5EF-4774-B8DE-6C5387207035`
    )

    static let `2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8` = DefaultWineRegion(
        id: UUID(uuidString: "2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8")!,
        name: "Languedoc et Roussillon",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `CDD18855-D69C-4429-81D5-50C49FFBFA9A` = DefaultWineRegion(
        id: UUID(uuidString: "CDD18855-D69C-4429-81D5-50C49FFBFA9A")!,
        name: "Roussillon",
        vineyard: DefaultWineVineyard.`7C95C11D-CA13-4CC9-B3D6-C19079D8D712`
    )

    static let `E04D8587-F00F-4DEA-A10A-470C8DE66415` = DefaultWineRegion(
        id: UUID(uuidString: "E04D8587-F00F-4DEA-A10A-470C8DE66415")!,
        name: "Languedoc",
        vineyard: DefaultWineVineyard.`A05D2F6D-2601-4BE1-B8EC-8EC234CB92F4`
    )

    static let `994DDE33-B08A-416C-969D-56FF4E7FCAA7` = DefaultWineRegion(
        id: UUID(uuidString: "994DDE33-B08A-416C-969D-56FF4E7FCAA7")!,
        name: "Beaujolais et Lyonnais",
        vineyard: DefaultWineVineyard.`6615FA6F-E0B1-4C2F-9A53-DC14F33BABF4`
    )

    static let `D2DC217F-E314-49E2-B519-D34EB53CF759` = DefaultWineRegion(
        id: UUID(uuidString: "D2DC217F-E314-49E2-B519-D34EB53CF759")!,
        name: "les Vins Doux Naturels de la Vallée du Rhône",
        vineyard: DefaultWineVineyard.`44A1E4F8-611B-4FE3-887F-C6B34304BBD1`
    )

    static let `BEB220A7-8545-4A4E-B898-3F35E1501F00` = DefaultWineRegion(
        id: UUID(uuidString: "BEB220A7-8545-4A4E-B898-3F35E1501F00")!,
        name: "Pays de la Garonne",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `23034604-8021-4187-AC52-A4AC9B3C48D9` = DefaultWineRegion(
        id: UUID(uuidString: "23034604-8021-4187-AC52-A4AC9B3C48D9")!,
        name: "Poitou-Charentes",
        vineyard: DefaultWineVineyard.`6DAE236B-7529-41C5-8286-F5C545EEC623`
    )

    static let `31EBBC57-504E-40F2-A448-BC86C3873A37` = DefaultWineRegion(
        id: UUID(uuidString: "31EBBC57-504E-40F2-A448-BC86C3873A37")!,
        name: "la Vallée du Rhône Méridionale",
        vineyard: DefaultWineVineyard.`44A1E4F8-611B-4FE3-887F-C6B34304BBD1`
    )

    static let `ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57` = DefaultWineRegion(
        id: UUID(uuidString: "ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57")!,
        name: "Aquitaine et Charentes",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `698FD187-953D-4E00-89FB-3282B6B4F85B` = DefaultWineRegion(
        id: UUID(uuidString: "698FD187-953D-4E00-89FB-3282B6B4F85B")!,
        name: "le Bergeracois et Duras",
        vineyard: DefaultWineVineyard.`2351EA57-D261-494B-98A4-3EE6E2379A5B`
    )

    static let `6B2E9F5D-380B-4E03-9367-85FC9FE1BA80` = DefaultWineRegion(
        id: UUID(uuidString: "6B2E9F5D-380B-4E03-9367-85FC9FE1BA80")!,
        name: "la Touraine",
        vineyard: DefaultWineVineyard.`912F47F6-62A9-42CE-8CAC-FDF1CB42C304`
    )

    static let `A361E359-9B5A-49B4-8686-5D3E71B9D3D0` = DefaultWineRegion(
        id: UUID(uuidString: "A361E359-9B5A-49B4-8686-5D3E71B9D3D0")!,
        name: "le Chablisien",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `06918335-9F15-417E-8D48-299AA0931F6C` = DefaultWineRegion(
        id: UUID(uuidString: "06918335-9F15-417E-8D48-299AA0931F6C")!,
        name: "Vins du Luxembourg",
        vineyard: DefaultWineVineyard.`B687A3E4-6D2B-4D19-B27B-52882F2CCDEA`
    )

    static let `881ECE13-1644-4EEE-95BC-BEE4B9A8210D` = DefaultWineRegion(
        id: UUID(uuidString: "881ECE13-1644-4EEE-95BC-BEE4B9A8210D")!,
        name: "la Vallée du Rhône Septentrionale",
        vineyard: DefaultWineVineyard.`44A1E4F8-611B-4FE3-887F-C6B34304BBD1`
    )

    static let `0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4` = DefaultWineRegion(
        id: UUID(uuidString: "0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4")!,
        name: "les Appellations Régionales de Bordeaux",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `33441C4F-B65E-4ED8-ADB7-D003627EA46A` = DefaultWineRegion(
        id: UUID(uuidString: "33441C4F-B65E-4ED8-ADB7-D003627EA46A")!,
        name: "Jura",
        vineyard: DefaultWineVineyard.`6A4EEF0D-1480-4A18-9500-D0D8062B7C56`
    )

    static let `8F695619-9DB8-4E42-AB1A-07A5CC7D27BF` = DefaultWineRegion(
        id: UUID(uuidString: "8F695619-9DB8-4E42-AB1A-07A5CC7D27BF")!,
        name: "Vallée de la Loire",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `8ADF473C-4624-45D5-A38C-4DCB54815F84` = DefaultWineRegion(
        id: UUID(uuidString: "8ADF473C-4624-45D5-A38C-4DCB54815F84")!,
        name: "Lorraine",
        vineyard: DefaultWineVineyard.`3024B153-84CE-4967-B831-30B5253A22FB`
    )

    static let `EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33` = DefaultWineRegion(
        id: UUID(uuidString: "EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33")!,
        name: "les Appellations Régionales de Bourgogne",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD` = DefaultWineRegion(
        id: UUID(uuidString: "B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD")!,
        name: "la Côte de Nuits",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `170C21E6-99AE-465E-8EDF-86FC7DD423B4` = DefaultWineRegion(
        id: UUID(uuidString: "170C21E6-99AE-465E-8EDF-86FC7DD423B4")!,
        name: "les Vins Blancs Liquoreux",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `EF4A71C2-0EA4-406B-8FAA-BC6B344F194E` = DefaultWineRegion(
        id: UUID(uuidString: "EF4A71C2-0EA4-406B-8FAA-BC6B344F194E")!,
        name: "Anjou-Saumur",
        vineyard: DefaultWineVineyard.`912F47F6-62A9-42CE-8CAC-FDF1CB42C304`
    )

    static let `4C29944A-60BC-4D29-A1B6-12714D900F24` = DefaultWineRegion(
        id: UUID(uuidString: "4C29944A-60BC-4D29-A1B6-12714D900F24")!,
        name: "Régions de L'Est",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E` = DefaultWineRegion(
        id: UUID(uuidString: "C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E")!,
        name: "Champagne",
        vineyard: DefaultWineVineyard.`29B1FC5D-EE03-4C10-94A5-4346A729AEA1`
    )

    static let `03FB2265-F74B-4F1B-A9FD-E45798106913` = DefaultWineRegion(
        id: UUID(uuidString: "03FB2265-F74B-4F1B-A9FD-E45798106913")!,
        name: "le Mâconnais",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `0573C409-B13E-4C15-92F6-6EEB75EE07B5` = DefaultWineRegion(
        id: UUID(uuidString: "0573C409-B13E-4C15-92F6-6EEB75EE07B5")!,
        name: "la Moyenne Garonne",
        vineyard: DefaultWineVineyard.`2351EA57-D261-494B-98A4-3EE6E2379A5B`
    )

    static let `33DB891E-D8B4-4C46-B660-1C74677AE880` = DefaultWineRegion(
        id: UUID(uuidString: "33DB891E-D8B4-4C46-B660-1C74677AE880")!,
        name: "le Blayais et le Bourgeais",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `E9A28BA3-0621-44D2-A8ED-6E40C96C8F30` = DefaultWineRegion(
        id: UUID(uuidString: "E9A28BA3-0621-44D2-A8ED-6E40C96C8F30")!,
        name: "la Région des Graves",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `BD44911B-BF60-4759-B943-2098B3176BB2` = DefaultWineRegion(
        id: UUID(uuidString: "BD44911B-BF60-4759-B943-2098B3176BB2")!,
        name: "Savoie et Bugey",
        vineyard: DefaultWineVineyard.`F51CB6E3-D7D3-4A45-9FA6-95BF30586181`
    )

    static let `343A3737-0C2F-46E6-8E80-195205409007` = DefaultWineRegion(
        id: UUID(uuidString: "343A3737-0C2F-46E6-8E80-195205409007")!,
        name: "le Piémont du Massif Central",
        vineyard: DefaultWineVineyard.`2351EA57-D261-494B-98A4-3EE6E2379A5B`
    )

    static let `2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B` = DefaultWineRegion(
        id: UUID(uuidString: "2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B")!,
        name: "la Région Nantaise",
        vineyard: DefaultWineVineyard.`912F47F6-62A9-42CE-8CAC-FDF1CB42C304`
    )

    static let `48CF4665-6C60-4E2F-8C76-FB361DE4A6AC` = DefaultWineRegion(
        id: UUID(uuidString: "48CF4665-6C60-4E2F-8C76-FB361DE4A6AC")!,
        name: "les Appellations Régionales de la Loire",
        vineyard: DefaultWineVineyard.`912F47F6-62A9-42CE-8CAC-FDF1CB42C304`
    )

    static let `043469E7-2A76-4D34-A8CA-A6E9CB75F619` = DefaultWineRegion(
        id: UUID(uuidString: "043469E7-2A76-4D34-A8CA-A6E9CB75F619")!,
        name: "la Côte de Beaune",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `74671C2B-5D9F-47BD-81C2-A5907269EE5D` = DefaultWineRegion(
        id: UUID(uuidString: "74671C2B-5D9F-47BD-81C2-A5907269EE5D")!,
        name: "Alpes et Pays Rhodaniens",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )

    static let `CB5736F0-F3E1-431C-A22B-16F8C47C54EC` = DefaultWineRegion(
        id: UUID(uuidString: "CB5736F0-F3E1-431C-A22B-16F8C47C54EC")!,
        name: "Entre Garonne et Dordogne",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `F5E7E4C9-BE3F-4E50-8773-1152E9FCC7C4` = DefaultWineRegion(
        id: UUID(uuidString: "F5E7E4C9-BE3F-4E50-8773-1152E9FCC7C4")!,
        name: "les Appellations Régionales de la Vallée du Rhône",
        vineyard: DefaultWineVineyard.`44A1E4F8-611B-4FE3-887F-C6B34304BBD1`
    )

    static let `09655B84-A485-4931-8C32-B0EF4D79F00C` = DefaultWineRegion(
        id: UUID(uuidString: "09655B84-A485-4931-8C32-B0EF4D79F00C")!,
        name: "le Piémont Pyrénéen",
        vineyard: DefaultWineVineyard.`2351EA57-D261-494B-98A4-3EE6E2379A5B`
    )

    static let `19651903-D11F-454B-81C4-9E799BC252AF` = DefaultWineRegion(
        id: UUID(uuidString: "19651903-D11F-454B-81C4-9E799BC252AF")!,
        name: "le Médoc",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `1D9184E4-CCCF-4560-87A8-508E2EB862A7` = DefaultWineRegion(
        id: UUID(uuidString: "1D9184E4-CCCF-4560-87A8-508E2EB862A7")!,
        name: "la Côte Chalonnaise",
        vineyard: DefaultWineVineyard.`43D8CCB3-4E6A-47F0-A4E5-627FBE273799`
    )

    static let `FF7EA602-2534-4884-A204-007A0E933325` = DefaultWineRegion(
        id: UUID(uuidString: "FF7EA602-2534-4884-A204-007A0E933325")!,
        name: "Corse",
        vineyard: DefaultWineVineyard.`BD447EA1-F42C-493E-8981-E14C3EC81CA6`
    )

    static let `E024B58E-38F2-4A19-99F0-8C120AF99B63` = DefaultWineRegion(
        id: UUID(uuidString: "E024B58E-38F2-4A19-99F0-8C120AF99B63")!,
        name: "le Libournais",
        vineyard: DefaultWineVineyard.`42AC7A4C-41E5-4E83-B104-5C9C15EB5291`
    )

    static let `21C886C9-7357-4FC6-844A-0EDC8123514C` = DefaultWineRegion(
        id: UUID(uuidString: "21C886C9-7357-4FC6-844A-0EDC8123514C")!,
        name: "les Vignobles du Centre",
        vineyard: DefaultWineVineyard.`912F47F6-62A9-42CE-8CAC-FDF1CB42C304`
    )

    static let `70AD89CE-7D8A-40F0-A10A-40F73A37F0C2` = DefaultWineRegion(
        id: UUID(uuidString: "70AD89CE-7D8A-40F0-A10A-40F73A37F0C2")!,
        name: "Provence",
        vineyard: DefaultWineVineyard.`54B5492A-7290-4DF3-BD40-E97186CEFCF9`
    )

    static let `D8766E22-5CCA-4897-8F22-4A121EAD9B3D` = DefaultWineRegion(
        id: UUID(uuidString: "D8766E22-5CCA-4897-8F22-4A121EAD9B3D")!,
        name: "Provence, Basse Vallée du Rhône, Corse",
        vineyard: DefaultWineVineyard.`901E6AA6-5C97-4257-BA47-7EC061E4DA19`
    )
}

extension DefaultWineAppellation {
    static let `9CE0E221-9FF0-4C99-B711-B7EC35E51AEA` = DefaultWineAppellation(
        id: UUID(uuidString: "9CE0E221-9FF0-4C99-B711-B7EC35E51AEA")!,
        name: "Pineau-des-Charentes",
        description: "Le pineau-des-charentes est produit dans la région de Cognac qui, d'est en ouest, descend vers l'Atlantique. Le climat, de type océanique, se caractérise par un ensoleillement remarquable, avec de faibles écarts de température qui favorisent une lente maturation des raisins. Le vignoble, traversé par la Charente, est implanté sur des coteaux dont la vocation principale est la production du cognac. Celui-ci est «&nbsp;l'esprit&nbsp;» de ce vin de liqueur qui résulte du mélange de moûts de raisins partiellement fermentés avec la fameuse eau-de-vie.",
        rawWindow: "À boire à partir de 2 ans.\n Vieux pineau : plus de 5 ans.\n Très vieux pineau : plus de 10 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`26057DAF-416F-4B1E-9257-7D00A09BFA19`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`23034604-8021-4187-AC52-A4AC9B3C48D9`
    )

    static let `DB775A0A-698E-4097-97E8-B53E56A31586` = DefaultWineAppellation(
        id: UUID(uuidString: "DB775A0A-698E-4097-97E8-B53E56A31586")!,
        name: "Haut-Poitou",
        description: "Prospères au Moyen Âge, quand le Poitou se rattachait à l'Aquitaine, les vignobles du Haut-Poitou furent très étendus jusqu'à la fin du XIX e&nbsp;siècle. Ils se réduisent aujourd'hui à des enclaves entre herbages et cultures, au nord et à l'est de Poitiers. **Leurs vins appartiennent à la famille du Val de Loire tout en montrant des influences bordelaises**. Les rouges sont généralement légers et frais, mais possèdent une bonne structure. Les rosés présentent un caractère assez proche. Les blancs sont vifs et bouquetés. Ce sont le plus souvent des vins à boire jeunes. AOVDQS depuis 1970, le haut-poitou est devenu AOC en 2011.",
        rawWindow: "Blanc et rosé : à boire jeunes.\nRouge : 4 à 5 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`23034604-8021-4187-AC52-A4AC9B3C48D9`
    )

    static let `D4F88357-6AE3-4BDB-9941-793B604FFDE9` = DefaultWineAppellation(
        id: UUID(uuidString: "D4F88357-6AE3-4BDB-9941-793B604FFDE9")!,
        name: "Macvin-du-Jura",
        description: "**Ce vin de liqueur doit probablement son origine à une recette des abbesses de l'abbaye de Château-Chalon**. Pour son élaboration, le moût commence à peine sa fermentation qu'il est muté à l'eau-de-vie de marc de Franche-Comté, provenant de la même exploitation. L'eau-de-vie doit être «&nbsp;rassise&nbsp;», c'est-à-dire vieillie en fût de chêne pendant au moins dix-huit mois. Ensuite, le macvin se repose encore pendant un an en fût de chêne, car sa commercialisation ne peut se faire avant le 1er&nbsp;octobre de l'année suivant la récolte.",
        rawWindow: "30 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`,
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`,
            DefaultGrapeVariety.`8C41F045-4015-4083-BAAA-F8105BD516F0`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `9B276406-4FDD-454E-9843-7C85EA37A9CA` = DefaultWineAppellation(
        id: UUID(uuidString: "9B276406-4FDD-454E-9843-7C85EA37A9CA")!,
        name: "Crémant-du-Jura",
        description: "Les vins mousseux ont fait leur apparition dans le Jura au XVII e&nbsp;siècle. Au XX e&nbsp;siècle, des maisons se sont spécialisées dans les vins effervescents; **les appellations arbois,&nbsp;côtes-du-jura et même&nbsp;l'étoile existaient en version effervescente jusqu'à la reconnaissance en 1995 de l'AOC crémant-du-jura**, qui connaît un développement régulier. **L'appellation s'applique à des mousseux élaborés selon les règles strictes des crémants** (la méthode traditionnelle, avec deuxième fermentation en bouteille comme pour le champagne). Les raisins sont récoltés à l'intérieur de l'aire de production de l'AOC côtes-du-jura. **Les cépages mis en œuvre sont ceux de la région**&nbsp;: **chardonnay**, **savagnin** (ou **naturé**) en blanc; **poulsard** (ou **ploussard**), **trousseau** et **pinot noir** en rouge, auxquels peut s'ajouter le **pinot gris**. **Les crémants blancs mettent en vedette le chardonnay**, seul ou assemblé à d'autres variétés comme le pinot noir ou le trousseau; les rosés peuvent être issus d'une saignée de cépages rouges ou d'un assemblage comprenant des cépages blancs. L'élevage sur lies dure neuf mois au minimum. **Le crémant-du-jura produit dans une forte proportion des vins blancs aux arômes bien typés et dans une moindre mesure des vins rosés frais et fruités**.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`,
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`,
            DefaultGrapeVariety.`8C41F045-4015-4083-BAAA-F8105BD516F0`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `F508E067-1B50-4231-BE81-ACB0C5710EB0` = DefaultWineAppellation(
        id: UUID(uuidString: "F508E067-1B50-4231-BE81-ACB0C5710EB0")!,
        name: "Château-Chalon",
        description: "Seules quatre communes du Jura peuvent produire cette appellation prestigieuse&nbsp;: Château-Chalon, Menétru-le-Vignoble, Nevy-sur-Seille et Domblans. En venant de la reculée de Baume-les-Messieurs, la route sinueuse sillonne le vignoble pour arriver sur le bord du premier plateau jurassien où est implanté le village de Château-Chalon. Le plus renommé des vins jaunes ne se laisse pas déguster dans n'importe quelles conditions. Blanc de naissance, il accompagne les mets les plus raffinés presque comme... un rouge. Il s'accorde mieux aux viandes blanches qu'au poisson, sympathise avec le fromage et se boit chambré. Très typé, ce vin de garde sait être généreux pour qui apprécie sa nature particulière.",
        rawWindow: "50 à 100 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `392ED0E3-C53D-4E82-95EC-843DF3A3229E` = DefaultWineAppellation(
        id: UUID(uuidString: "392ED0E3-C53D-4E82-95EC-843DF3A3229E")!,
        name: "L'Étoile",
        description: "## Le vin L'Etoile\n\nPetite appellation jurassienne au nord-ouest de Lons-le-Saunier, **l'Étoile **se situe dans l'aire des côtes-du-jura. Ce village doit peut-être son nom aux cinq collines qui l'entourent, disposées comme cinq branches d'une étoile, ou bien au sol qui recèle une multitude de petits fossiles étoilés. **Chardonnay, savagnin **et** poulsard **sont à l'origine de** vins blancs complexes**. La gamme inclut des produits aussi originaux que le vin de paille et le vin jaune.",
        rawWindow: "Blanc sec : 5 à 10 ans.\nVin de paille : plus de 10 ans.\nVin jaune : 50 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`,
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `FAF3DE54-9CAC-482B-8727-2381AD1C6745` = DefaultWineAppellation(
        id: UUID(uuidString: "FAF3DE54-9CAC-482B-8727-2381AD1C6745")!,
        name: "Arbois",
        description: "## Les vins d'Arbois\n\nAu nord du Jura, arbois produit aujourd'hui davantage de vins rouges et rosés que de vins blancs, alors que l'AOC est surtout célèbre pour ses **vins jaunes** et ses **vins de paille**. Disposé autour de la **ville d'Arbois**, le vignoble est réparti sur treize communes et propose une large palette de vins&nbsp;: le **poulsard**, vinifié en rouge, est claire et se laisse prendre pour un rosé?; les vins jaunes issus du savagnin élevés six ans sous voile et les vins de paille élaborés à partir de raisins rouges ou blancs, récoltés très tôt et passerillés sur claies, ont de fortes personnalités. On trouve aussi des **chardonnays** en blanc et des trousseaux en rouge. Il faut savoir découvrir avec patience ces vins au caractère déjà un peu montagnard et inimitable.",
        rawWindow: "Rouge : 3 à 5 ans.\nRosé : à boire jeune.\nBlanc sec : 3 ans.\nVin jaune : 50 ans.\nVin de paille : plus de 10 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`,
            DefaultGrapeVariety.`8C41F045-4015-4083-BAAA-F8105BD516F0`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `67CC366E-1CFB-42C8-AC4B-3CD25BB6F5CD` = DefaultWineAppellation(
        id: UUID(uuidString: "67CC366E-1CFB-42C8-AC4B-3CD25BB6F5CD")!,
        name: "Côtes-du-Jura",
        description: "En Franche-Comté, le vignoble s'étend d'ouest en est entre la plaine bressane et le premier plateau du Jura et, du nord au sud, de Salins-les-Bains à Saint-Amour, sur un terroir de coteaux situés entre 220 et 380&nbsp;m d'altitude. C'est la gamme complète des vins jurassiens que l'on trouve sous l'appellation côtes-du-jura&nbsp;: blancs, rosés, rouges, vins jaunes, vins de paille. En termes de volume produit, les blancs dominent nettement. Ils sont issus du **chardonnay**, de l'assemblage de chardonnay et de **savagnin** ou plus rarement du savagnin pur, ce dernier étant généralement réservé à l'élaboration du vin jaune.",
        rawWindow: "Blanc sec : 3 ans.\nRouge : 3 à 5 ans.\nRosé : à boire jeune.\nVin jaune : 50 ans.\nVin de paille : plus de 10 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`,
            DefaultGrapeVariety.`8C41F045-4015-4083-BAAA-F8105BD516F0`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`33441C4F-B65E-4ED8-ADB7-D003627EA46A`
    )

    static let `0AAE6794-81F7-408D-83B6-91C3F8A4ED1A` = DefaultWineAppellation(
        id: UUID(uuidString: "0AAE6794-81F7-408D-83B6-91C3F8A4ED1A")!,
        name: "Muscat-du-Cap-Corse",
        description: "Les vignobles du cap Corse et du Nebbio sont les plus anciens de l'île. Les vins doux constituent une très vieille spécialité. Le terroir de l'appellation muscat-du-cap-corse est aussi varié que les paysages qui l'habillent. Entre roche et maquis, soumis aux vents et à l'aridité, la vigne résiste à des conditions difficiles pour exprimer le meilleur d'elle-même. Ici, les terres schisteuses sont les plus étendues, tandis que les terroirs granitiques sont limités au massif du Tenda dans le Nebbio. Des bancs calcaires apparaissent sur certaines communes du cap Corse (Rogliano, Tomino) et du Nebbio (**Patrimonio**), et quelques roches vertes affleurent ici et là en massifs et escarpements.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`FF7EA602-2534-4884-A204-007A0E933325`
    )

    static let `6C5A00EE-F3C2-4D2C-9C2D-5E13D45FF9D4` = DefaultWineAppellation(
        id: UUID(uuidString: "6C5A00EE-F3C2-4D2C-9C2D-5E13D45FF9D4")!,
        name: "Patrimonio",
        description: "Située dans un amphithéâtre au nord de l'île de Beauté, au pied du cap Corse, l'appellation patrimonio couvre la partie nord de la région du Nebbio. Le vignoble, à flanc de coteaux, domine le golfe de Saint-Florent. Plusieurs communes sont regroupées sous l'appellation&nbsp;: Saint-Florent et Farinole en bord de mer ; Patrimonio, Barbaggio, Poggio d'Oletta et Oletta au pied de la montagne ; Santo Pietro di Tenda à l'orée du désert des Agriates. Les sols caillouteux et le microclimat de brumes et de brises offrent à la vigne les meilleurs atouts pour produire des vins de qualité à partir de faibles rendements.",
        rawWindow: "Rouge : 5 ans.\n Rosé : à boire jeune.\n Blanc : 2 à 3 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`512551E3-FC89-44AD-A5F9-A70F874D7D2C`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`ACF466A5-42AB-409F-A03C-58B2359C7B01`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`
        ],
        region: DefaultWineRegion.`FF7EA602-2534-4884-A204-007A0E933325`
    )

    static let `39A18443-9428-49B4-92B5-3389AC5E17BC` = DefaultWineAppellation(
        id: UUID(uuidString: "39A18443-9428-49B4-92B5-3389AC5E17BC")!,
        name: "Corse (vin De)",
        description: "Implanté par les Génois au XVI e&nbsp;s., le vignoble corse relève d'une longue tradition viticole. Déjà en 570 av. J.-C., les Phocéens y avaient implanté des ceps. Les vignes se concentrent à la périphérie de l'île, la côte orientale de Bastia à Ghisonaccia représentant la surface viticole la plus importante. C'est dans ce secteur que se situent les plus grandes caves coopératives et propriétés. Les vins corses sont à rattacher à la grande famille des vins du Sud, mais avec une typicité particulière liée à leurs cépages et à leur potentiel aromatique très développé.",
        rawWindow: "Rouge : 4 à 5 ans.\n Rosé : à boire jeune.\n Blanc : 2 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`ACF466A5-42AB-409F-A03C-58B2359C7B01`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`512551E3-FC89-44AD-A5F9-A70F874D7D2C`
        ],
        region: DefaultWineRegion.`FF7EA602-2534-4884-A204-007A0E933325`
    )

    static let `FE05997A-4D38-49D8-9EA5-D7AD29F1FFB9` = DefaultWineAppellation(
        id: UUID(uuidString: "FE05997A-4D38-49D8-9EA5-D7AD29F1FFB9")!,
        name: "Ajaccio",
        description: "Ajaccio peut être fière des vins ensoleillés de son AOC, en majorité des rouges et des rosés. Les vignobles s'étendent sur les collines environnantes du chef-lieu de la Corse du Sud, dans un rayon de quelques dizaines de kilomètres, joignant le charme de leur verdure aux attraits de l'une des régions les plus pittoresques du pays&nbsp;: golfes, îles, ciel d'azur, végétation exubérante, rivage tourmenté exaltent toute la splendeur de la Méditerranée. Dans un paysage montagneux, la vigne est essentiellement implantée autour des villages, sur des coteaux qui ne dépassent pas 300-350 m d'altitude. D'ailleurs, la première dénomination de l'appellation était «&nbsp;**coteaux d'ajaccio**&nbsp;». Sur les trente-six communes délimitées, seulement douze revendiquent l'AOC. Environ 30 % de la production globale proviennent de l'unique coopérative de l'appellation.",
        rawWindow: "Rouge : 5 ans.\nRosé : à boire jeune.\nBlanc : 1 à 2 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`512551E3-FC89-44AD-A5F9-A70F874D7D2C`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`ACF466A5-42AB-409F-A03C-58B2359C7B01`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`
        ],
        region: DefaultWineRegion.`FF7EA602-2534-4884-A204-007A0E933325`
    )

    static let `0DA44F7C-5B2C-42F7-BC16-A1535BD6AC2B` = DefaultWineAppellation(
        id: UUID(uuidString: "0DA44F7C-5B2C-42F7-BC16-A1535BD6AC2B")!,
        name: "Côtes-de-Toul",
        description: "L'aire de production intéresse huit communes situées sur la côte de Meuse et encadrant la ville de Toul. Son terroir se caractérise par des sols d'origine sédimentaire. Si l'appellation produit aussi bien des vins blancs (le plus souvent constitués d'**auxerrois**) que des vins rouges (à base de **pinot noir** exclusivement), elle est surtout connue pour sa production originale de vins gris. Ces derniers sont le résultat de la vinification en blanc de cépages à pellicule rouge mais à pulpe incolore, tels le **gamay** ou le pinot noir.",
        rawWindow: "2 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`8ADF473C-4624-45D5-A38C-4DCB54815F84`
    )

    static let `900D6F16-CDE7-412E-BBCB-6190657F4A7E` = DefaultWineAppellation(
        id: UUID(uuidString: "900D6F16-CDE7-412E-BBCB-6190657F4A7E")!,
        name: "Moselle",
        description: "Le vignoble lorrain semble bien marginal quand on le situe sur la carte viticole. Pourtant, il a connu une histoire florissante. Il suffit pour s'en convaincre de passer la frontière. Que l'on regarde le versant allemand ou le versant luxembourgeois, la vigne est omniprésente. **En matière d'encépagement, les usages mosellans sont le fruit d'une influence bourguignonne** (avec **les cépages gamay et pinot noir** essentiellement plantés dans les communes du sud de la Moselle) **et germanique** (avec **les cépages riesling, gewurztraminer et surtout müller-thurgau**, présents sur les communes proches de la frontière). Les vins rosés dominent au sud de l'appellation et les vins blancs au nord. AOVDQS depuis 1951, la moselle a accédé à l'AOC en 2011.",
        rawWindow: "2 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`725D4FFD-C4ED-4E76-933A-927D21D9D77E`,
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`,
            DefaultGrapeVariety.`97417FBF-45B1-4A70-A784-CD5257170DD5`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`8ADF473C-4624-45D5-A38C-4DCB54815F84`
    )

    static let `D36A4FA8-6ED4-48B4-A814-B00782920E4C` = DefaultWineAppellation(
        id: UUID(uuidString: "D36A4FA8-6ED4-48B4-A814-B00782920E4C")!,
        name: "Ratafia Champenois",
        description: "## Qu'est-ce que le ratafia ?\n\n&nbsp;\n\nLe&nbsp;**ratafia champenois**&nbsp;est un&nbsp;**vin muté&nbsp;élaboré selon une&nbsp;méthode ancestrale**. Longtemps considéré comme «&nbsp;l’apéritif du vigneron&nbsp;», il est désormais reconnu en tant qu’Indication géographique protégée (IGP) depuis 2015.&nbsp;Cette reconnaissance garantit que le **ratafia champenois est produit en&nbsp;Champagne,** en respectant des&nbsp;normes précises de fabrication.\n\n## Histoire et origine du ratafia\n\n&nbsp;\n\nDès le XVIIe siècle, les vignerons de la région de Champagne ont commencé à produire du **ratafia** en utilisant les raisins non vendus, ainsi que les eaux-de-vie de marc ou de vin. Le r**atafia était, à cette époque, considéré comme un vin de table bon marché, **qui accompagnait les repas au quotidien. Puis, les vignerons ont commencé à améliorer les techniques de production du ratafia, ils ont également utilisé des raisins de meilleure qualité. **Ainsi, le ratafia est devenu dès le XXe siècle, une boisson très appréciée du grand public**. La réputation de cette appellation champenoise s'est étendu bien au delà de sa région d'origine.&nbsp;Aujourd'hui, le ratafia champenois est reconnu pour sa qualité exceptionnelle et&nbsp;atteste de l'histoire et&nbsp;du savoir-faire des vignerons de Champagne.\n\n## Fabrication du ratafia\n\n&nbsp;\n\n**Le ratafia est un&nbsp;vin muté élaboré&nbsp;dont la&nbsp;fermentation est stoppée&nbsp;par ajout d’un&nbsp;alcool d’origine viticole**&nbsp;(eau-de-vie de vin, eau-de-vie de marc, distillat vinique, distillat de vin). Les raisins utilisés pour les moûts doivent être les mêmes que ceux revendiqués dans les&nbsp;appellations champagne&nbsp;ou&nbsp;coteaux champenois. La&nbsp;**fabrication&nbsp;du ratafia est soumise à des règles strictes** : elle doit avoir lieu dans un délai de&nbsp;vingt jours après la date de pressurage&nbsp;des raisins entrant dans la composition des moûts mis en œuvre. Cette méthode garantit la qualité des raisins utilisés et permet d’obtenir des moûts de grande qualité. Après fabrication, les liqueurs subissent une&nbsp;maturation&nbsp;en&nbsp;cuve&nbsp;ou en&nbsp;fût&nbsp;de&nbsp;dix mois minimum&nbsp;avant conditionnement. Cette étape de maturation permet aux arômes de se développer et de se fondre pour donner un vin équilibré et harmonieux. Puis elles sont vieillies en récipient en&nbsp;bois de chêne&nbsp;durant une période minimale de&nbsp;trois ans&nbsp;: les&nbsp;ratafias&nbsp;sont alors considérés comme «&nbsp;Vieux&nbsp;» et comme «&nbsp;Très vieux&nbsp;» si les liqueurs ont été vieillies au moins**&nbsp;**huit ans à compter de la mise sous bois.&nbsp;## Quand boire du ratafia ?\n\n&nbsp;\n\nLe **ratafia champenois est une boisson versatile qui peut être appréciée à tout moment de la journée**. En général, il est servi en apéritif, accompagné de quelques amuse-bouches, ou de fromages à pâte dures. Sa saveur douce et fruitée, avec une touche d'amertume, en fait également un bon substitut&nbsp;pour accompagner les desserts, en particulier les gâteaux, les tartes et les fruits frais. **Le ratafia peut être servi frais, mais il est recommandé de le déguster à une température de 8-10°C pour apprécier pleinement ses arômes et ses saveurs**. Les&nbsp;ratafia&nbsp;«&nbsp;Vieux&nbsp;» ou «&nbsp;Très vieux&nbsp;»&nbsp;peuvent être appréciées comme digestifs, pour&nbsp;terminer un repas en toute élégance.",
        rawWindow: "10-15 ans",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6C93913A-AFA8-465D-BB50-6DA741AC3D2B`,
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E`
    )

    static let `AF1B5967-4A43-43A4-A332-43EAE7997D90` = DefaultWineAppellation(
        id: UUID(uuidString: "AF1B5967-4A43-43A4-A332-43EAE7997D90")!,
        name: "Rosé-des-Riceys",
        description: "Le rosé-des-riceys est un rosé tranquille confidentiel produit au sud de la Champagne viticole. S'il s'écoule plus de 300&nbsp;millions de cols de champagne par an, cette appellation ne livre qu'environ 50000&nbsp;bouteilles, originaires de la seule commune des Riceys, située au sud de l'Aube. Ce village aux trois clochers fait partie de la Côte des Bar, région proche de la Bourgogne mais incluse dans l'aire d'**appellation champagne**. Le vignoble rappelle le Chablisien par ses paysages de coteaux couronnés de bois et par ses sols marno-calcaires. Seules les meilleures parcelles, pentues, caillouteuses, bien orientées et complantées de vieilles vignes de **pinot noir**, sont aptes à produire des raisins suffisamment riches en sucre pour être vinifiés en rosé-des-riceys. Original, ce rosé de saignée offre un goût si spécifique qu'on parle de «&nbsp;goût des Riceys&nbsp;». Vinifié en cuve, il se boit dans les trois ans&nbsp;; élevé un à deux ans sous bois, il se rapproche d'un vin rouge par ses arômes, sa texture et son potentiel de garde.",
        rawWindow: "Élevé en cuve : moins de 3 ans.\nÉlevé en fût : 3 à 8 ans.\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E`
    )

    static let `072D0095-326C-49FE-905B-CC5C837A4910` = DefaultWineAppellation(
        id: UUID(uuidString: "072D0095-326C-49FE-905B-CC5C837A4910")!,
        name: "Coteaux-Champenois",
        description: "Les coteaux-champenois peuvent être élaborés dans l'ensemble de l'aire du champagne, mais ce sont des vins tranquilles. Fréquemment figure sur l'étiquette le nom de la commune dont le vin est issu; l'une des plus célèbres étant Bouzy, grand cru de **pinot noir**. Vertus ou Sillery produisent aussi des coteaux-champenois réputés, tout comme Aÿ. Une grande majorité de ces vins ne sont pas millésimés&nbsp;: ils naissent d'un assemblage d'années différentes. Les coteaux-champenois sont des vins rares car leur production est faible. Et, lors de pénuries de raisin, la totalité de la récolte est dévolue au champagne.",
        rawWindow: "3 à 5 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`6C93913A-AFA8-465D-BB50-6DA741AC3D2B`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E`
    )

    static let `8871B7D3-C8FE-42CC-9025-6758ED1C0B8F` = DefaultWineAppellation(
        id: UUID(uuidString: "8871B7D3-C8FE-42CC-9025-6758ED1C0B8F")!,
        name: "Champagne",
        description: "La plus septentrionale des régions viticoles de France produit le plus célèbre des vins effervescents, modèle des vins de fête.&nbsp;La **région Champagne** s'étend principalement sur les départements de la Marne et de l'Aube, avec de modestes extensions dans l'Aisne, la Seine-et-Marne et la Haute-Marne.&nbsp;\n\nLe **vignoble de Champagne** est implanté sur un socle crayeux dont la perméabilité et la richesse en principes minéraux apportent leur finesse aux vins de Champagne. Dans le paysage vallonné, se découpent quatre régions principales&nbsp;: la Montagne de Reims, la Côte des Blancs, la vallée de la Marne et le vignoble de l'Aube.\n\nEn dépit de l'**appellation unique champagne**, il existe une** infinité de champagnes**. Ce sont certes des vins blancs ou rosés effervescents, mais l'on distingue dans la production des** champagnes blancs de blancs** (issus du **chardonnay** seul), des **champagnes blancs de noirs** (de **pinot meunier**, de **pinot noir** ou des deux variétés), ou des** champagnes blancs** issus de l'assemblage des trois cépages.&nbsp;\n\nPar ailleurs, le dosage différencie les** champagnes bruts zéro** (extra-secs), les **champagnes bruts,** les **champagnes demi-secs**, voire les **champagnes doux**. Il existe aussi des**&nbsp;champagnes non millésimés** et des** champagnes millésimés**. Les Champenois parlent de «&nbsp;brut sans année&nbsp;» (BSA) ou de «&nbsp;millésimé&nbsp;». Les cuvées de prestige – ou cuvées spéciales – regroupent l'ensemble des types&nbsp;: leur prix de vente élevé devrait correspondre à des&nbsp;champagnes haut de gamme. Elles sont commercialisées dans des bouteilles aux formes recherchées.\n\n**Comment produit-on un Champagne ?**\n\nLe **champagne est un vin blanc mis dans une bouteille fermée après ajout de sucre et de levures**. Le sucre est transformé en alcool et le gaz carbonique dégagé par les levures crée des bulles.&nbsp;\n\nAprès un long repos en cave, on évacue les levures mortes, on ajoute du sucre pour moins d'acidité et on ferme la bouteille de champagne avec un bouchon résistant à la pression.&nbsp;",
        rawWindow: "Champagne Brut sans année : à boire jeune.\n Blanc de blancs : 4 à 10 ans.\n Millésimés et cuvées spéciales : jusqu’à 10 ans et plus.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6C93913A-AFA8-465D-BB50-6DA741AC3D2B`,
            DefaultGrapeVariety.`A20F5DA2-3895-4FC9-A56C-E1B521049C7D`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`C24A4F7C-DCBD-4E04-A04F-07B08DBAD19E`
    )

    static let `C1EEBD52-E581-426B-9623-EAD85FD95764` = DefaultWineAppellation(
        id: UUID(uuidString: "C1EEBD52-E581-426B-9623-EAD85FD95764")!,
        name: "Blanquette-de-Limoux",
        description: "À l'ouest des Corbières et au nord des Pyrénées, le vignoble de Limoux est encadré par des reliefs, sauf vers Carcassonne. Il remonte le cours de l'Aude, grimpant jusqu'à 500 m d'altitude vers le sud, dans la haute vallée. Son originalité en Languedoc tient à la place prise depuis des siècles par les cépages blancs et les mousseux, favorisée par un climat localement plus frais. Popularisée dès le XIX e&nbsp;siècle, la blanquette-de-limoux est élaborée selon la méthode traditionnelle&nbsp;: la prise de mousse résulte d'une seconde fermentation en bouteille suivie d'une maturation sur lies de neuf mois, contrairement au limoux méthode ancestrale. Elle privilégie le traditionnel **mauzac**, cultivé ici depuis des siècles, à la différence du **crémant-de-limoux** qui donne la vedette à des cépages septentrionaux comme le **chardonnay**.",
        rawWindow: "Agréables jeunes mais se conservent plusieurs années.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `AC9A3BBA-D8BF-4B1B-B9DA-B05A2C4C79C0` = DefaultWineAppellation(
        id: UUID(uuidString: "AC9A3BBA-D8BF-4B1B-B9DA-B05A2C4C79C0")!,
        name: "Fitou",
        description: "Le vignoble de fitou est installé sur les meilleurs terroirs du massif des Corbières. Cette appellation présente une situation particulièrement originale&nbsp;: à l'est, le fitou maritime borde l'étang de Leucate – c'est le domaine des cailloux, de la sécheresse et du vent; à l'ouest, le fitou de l'intérieur est à l'abri du mont Tauch et se répartit dans deux bassins. Fitou a été la première appellation reconnue en Languedoc. Aujourd'hui, elle ne produit que du vin rouge. **Le carignan, cépage d'origine espagnole, y trouve son terroir de prédilection**&nbsp;: lorsque les vieux carignans sont conduits à petits rendements, ils peuvent produire ici de superbes vins.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `4C34C95F-D0CD-4C06-A871-FB30DF00D1F0` = DefaultWineAppellation(
        id: UUID(uuidString: "4C34C95F-D0CD-4C06-A871-FB30DF00D1F0")!,
        name: "Faugères",
        description: "Ce terroir du nord du département de l'Hérault est adossé aux premiers contreforts de la montagne noire, entre la vallée de l'Orb et la plaine de Béziers. Les coteaux schisteux portent une végétation qui se distingue nettement de celle des garrigues calcaires avoisinantes, notamment par la présence de cistes odorants. C'est un pays rude, évoquant la Cévenne. Le climat est méditerranéen, chaud en été, sec et doux en hiver. Les précipitations, de l'ordre de 800 à 1?000&nbsp;mm par an, sont très irrégulières d'une année à l'autre. L'AOC produit des vins rouges, blancs et rosés. Comme dans la plupart des vignobles méridionaux, c'est avec l'assemblage de plusieurs cépages que l'on obtient les vins les plus complets.",
        rawWindow: "Rouge : 4 à 5 ans.\n Rosé et blanc : à boire jeunes.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `AAB927FA-3382-4AAF-AA76-5EE89B3E028B` = DefaultWineAppellation(
        id: UUID(uuidString: "AAB927FA-3382-4AAF-AA76-5EE89B3E028B")!,
        name: "Clairette-du-Languedoc",
        description: "L'AOC clairette-du-languedoc est produite au cœur de l'Hérault, au pied du pic de Vissou, sur onze communes situées au nord de Pézenas. L'aire, située à 30&nbsp;km de la mer, bénéficie d'un climat méditerranéen chaud et sec l'été?; la prédominance du vent du nord est atténuée par les premiers contreforts des Cévennes. Le vignoble produit non seulement des vins blancs secs, mais aussi quelques moelleux, des vins rancio ou des vins de liqueur.",
        rawWindow: "Blanc sec : 2 à 3 ans.\n Moelleux et vins de liqueur : 10 ans et plus.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `2D288662-DA39-494B-B623-809C22C2EE3E` = DefaultWineAppellation(
        id: UUID(uuidString: "2D288662-DA39-494B-B623-809C22C2EE3E")!,
        name: "Blanquette Méthode Ancestrale",
        description: "AOC à part entière, la blanquette méthode ancestrale reste un produit confidentiel. Le principe d'élaboration réside dans une seule fermentation en bouteille. Aujourd'hui, les techniques modernes permettent d'élaborer un vin peu alcoolisé (autour de 6&nbsp;%&nbsp;vol.), doux, provenant de l'unique cépage mauzac.",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `9A6A3334-74FC-4374-9872-C5DDD623FE1D` = DefaultWineAppellation(
        id: UUID(uuidString: "9A6A3334-74FC-4374-9872-C5DDD623FE1D")!,
        name: "la Clape",
        description: "Cette ancienne dénomination géographique de l’appellation languedoc a été élevée en 2015 au rang d’appellation communale pour ses vins rouges (80 %) et aussi pour ses blancs. La Clape, en occitan, désigne un «tas de pierres». Ile jusqu'au XIVes., ce massif calcaire forme une barrière séparant la côte de Narbonne. Favorisée dès la conquête romaine par l'importance de cette ville, capitale de la Narbonnaise, alors ouverte sur la Méditerranée, la vigne a colonisé ses contreforts et ses vallons, entre garrigue sauvage et pinède. Éclats calcaires, terres rouges, marnes, grès, les sols, très variés, expliquent la variété des cépages cultivés. **Les vins bénéficient d'un climat méditerranéen très ensoleillé**, presque semi-aride, de l'air maritime et de nombreux vents qui éloignent les pluies. L'appellation concerne sept communes, dont Narbonne. **Les vins assemblent au moins deux variétés**. **En rouge, les principales sont les grenache, mourvèdre, syrah**, adaptés à la chaleur. **Parmi les onze cépages autorisés en blanc, le bourboulenc est le plus typé du lieu** (40 % des surfaces). À la fois ronds et frais, les blancs sont floraux, fruités, minéraux et iodés. Les rouges sont profonds, amples et structurés, souvent marquée par des notes balsamiques.",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `2FBC4594-824D-4096-BB4C-7E323340D917` = DefaultWineAppellation(
        id: UUID(uuidString: "2FBC4594-824D-4096-BB4C-7E323340D917")!,
        name: "Cabardès",
        description: "Au nord-ouest de Carcassonne, le vignoble de Cabardès constitue la partie la plus occidentale du Languedoc. Ici, chaque forteresse résonne encore de la croisade des Albigeois. C'est aussi à cet endroit qu'en 1666 a débuté le creusement du canal du Midi. Soumis à l'influence océanique, l'encépagement se partage entre les spécialités de la Méditerranée et celles de l'Atlantique&nbsp;: **grenache** et **syrah** sur les terroirs les plus secs, **cabernet-sauvignon** et **merlot** sur les sols les plus profonds.",
        rawWindow: "Rouge : 2 à 5 ans (jusqu’à 10 ans pour les grands millésimes).\nRosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `A6310AD5-AD60-4D69-BB98-87119EB570A0` = DefaultWineAppellation(
        id: UUID(uuidString: "A6310AD5-AD60-4D69-BB98-87119EB570A0")!,
        name: "Corbières-Boutenac",
        description: "Intégré dans le massif des Corbières, le secteur de Boutenac bénéficie d'un des terroirs les plus qualitatifs des Corbières, ce qui lui a valu une appellation à part entière. L'aire d'appellation s'étend sur dix communes du département de l'Aude, entre Lézignan-Corbières au nord et Thézan-des-Corbières au sud. Plongeant profondément leurs racines dans les sols pierreux, arides et bien drainés, les ceps côtoient la garrigue. Ils couvrent les pentes douces d'une série de collines et de croupes couronnées de pins. À l'écart des influences maritimes, le vignoble bénéficie d'un climat pleinement méditerranéen, avec des étés particulièrement ensoleillés, secs et ventés, qui favorisent les cépages méridionaux historiques&nbsp;: le **mourvèdre**, le **grenache** et le **carignan**, auxquels s'ajoute la **syrah**. Vin issu de faibles rendements et d'un long élevage, le corbières-boutenac associe au moins deux cépages. Le carignan, récolté manuellement et vinifié en grains entiers, représente une part notable de l'assemblage. Il trouve dans ce milieu sa plus belle expression. Les corbières-boutenac sont des vins rouges puissants et chaleureux.",
        rawWindow: "2 à 5 ans (au-delà de 10 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `468B72F4-07EF-407C-8795-95604A1E5A73` = DefaultWineAppellation(
        id: UUID(uuidString: "468B72F4-07EF-407C-8795-95604A1E5A73")!,
        name: "Crémant-de-Limoux",
        description: "**Reconnu seulement en 1990, le crémant-de-limoux n'en bénéficie pas moins de la solide expérience et de l'exigence des producteurs de la région de Limoux en matière de vins effervescents** (voir **blanquette-de-limoux** et **limoux méthode ancestrale**). Les conditions de production de la blanquette, par seconde fermentation en bouteille, étant déjà très strictes, les Limouxins n'ont eu aucune difficulté à adopter la rigueur de l'élaboration propre au crémant. Plusieurs années avant la définition de l'AOC crémant-de-limoux, ils élaboraient des cuvées issues de subtils mariages entre la personnalité et la typicité du **mauzac**, l'élégance et la rondeur du **chardonnay**, la jeunesse et la fraîcheur du **chenin**.** Les cépages septentrionaux, en effet, se sont bien acclimatés dans le vignoble de Limoux**, «&nbsp;le plus aquitain de la Méditerranée&nbsp;», plus frais et moins sec que d'autres secteurs du Languedoc. **Depuis 2004, le mauzac, cépage traditionnel de la région, est désormais réservé à la blanquette**. **C'est le chardonnay qui règne en maître dans l'appellation crémant-de-limoux, complété par le chenin**. Plus récemment introduit, le pinot noir participe à l'élaboration de rosés.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `8815C453-78C8-4AD3-954A-E4114ADDD6C1` = DefaultWineAppellation(
        id: UUID(uuidString: "8815C453-78C8-4AD3-954A-E4114ADDD6C1")!,
        name: "Corbières",
        description: "Massif montagneux aride, les Corbières sont limitées à l'est par la côte méditerranéenne, au sud par une barrière calcaire saisissante qui les sépare du Roussillon, au nord par l'axe Carcassonne-Narbonne, et à l'ouest par une série de hauteurs, tel le Pech de Bugarach. C'est surtout un vignoble de vins rouges. La **syrah** apporte partout sa richesse et son fruit, mais plus particulièrement à l'ouest de l'appellation où sa maturité est plus lente. À l'est, le **mourvèdre**, le **carignan** et le **grenache noir** donnent à ce vignoble son identité. Les vins blancs, dont la dominante principale est le gras et l'onctuosité, affirment leur caractère méditerranéen.",
        rawWindow: "Rouge : 2 à 5 ans (au-delà de 10 ans pour les grands millésimes).\nRosé : à boire jeune.\nBlanc : 1 à 3 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `B4BF03C6-95A7-4567-91DD-398DCEC0F2ED` = DefaultWineAppellation(
        id: UUID(uuidString: "B4BF03C6-95A7-4567-91DD-398DCEC0F2ED")!,
        name: "Limoux",
        description: "Le limouxin viticole s'étend le long de l'Aude, depuis Campagne-sur-Aude et Espéraza jusqu'à Pomas au nord-est de Limoux. Quarante et une communes appartiennent à cette aire blottie sur les contreforts pyrénéens, fermée par les monts des Corbières et ouverte au nord sur le Carcassonnais. Depuis 1992, **le limoux bénéficie d'une forte proportion de chardonnay et de chenin venus compléter le mauzac**; c'est un vin sec vinifié et élevé obligatoirement en barrique de chêne jusqu'au 1er&nbsp;mai suivant la vendange. En 2005, l'appellation a pris une nouvelle couleur&nbsp;: le rouge.",
        rawWindow: "3 à 6 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `CD04680B-F85A-4E8C-88CA-D66752CF8B1B` = DefaultWineAppellation(
        id: UUID(uuidString: "CD04680B-F85A-4E8C-88CA-D66752CF8B1B")!,
        name: "Malepère",
        description: "Au sud-ouest de Carcassonne, les côtes-de-la-malepère sont devenues malepère en accédant à l'AOC en 2007. L'aire d'appellation couvre trente-neuf communes sur les versants du massif de la Malepère, qui culmine à 442&nbsp;m. Les Corbières, à l'est, atténuent ici les influences méditerranéennes, et la vigne, surtout vers l'ouest, est soumise à un climat à tendance atlantique qui permet aux cépages bordelais de trouver leur place à côté des variétés méditerranéennes.",
        rawWindow: "2 à 5 ans (jusqu’à 10 ans pour les grands millésimes).\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `9EA238A2-0D46-46AA-83C3-54929DD8C494` = DefaultWineAppellation(
        id: UUID(uuidString: "9EA238A2-0D46-46AA-83C3-54929DD8C494")!,
        name: "Languedoc",
        description: "Entre mistral et tramontane, les plus anciens vignobles de France. Au V e&nbsp;s. avant J.-C., les Grecs n'avaient-ils pas déjà planté autour d'Agde&nbsp;? Quant à l'appellation coteaux-du-languedoc, elle est devenue en 2007 languedoc, vaste AOC régionale incluant, outre les coteaux d'origine, disséminés entre la bordure de la Montagne Noire et des Cévennes et la Méditerranée, presque toutes les aires d'appellations du Languedoc et du Roussillon. **Les vins rouges naissent de carignan et de cinsault** (limités à 40&nbsp;%), **complétés par les grenache noir, syrah, lladoner et mourvèdre**; **en blanc, de grenache blanc, de clairette et de bourboulenc surtout**. Quinze dénominations géographiques peuvent figurer sur l'étiquette. Les vins&nbsp;? Puissants et structurés, et de types nombreux tant les sols sont variés.",
        rawWindow: "Rouge : 2 à 4 ans (jusqu’à 8-10 ans pour les grands millésimes).\nRosé et blanc : 1 à 3 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`96501D60-8312-4DF5-BFBC-50585A87FF49`,
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `4CD93005-6477-4461-AA31-9A8DCD5E7A9D` = DefaultWineAppellation(
        id: UUID(uuidString: "4CD93005-6477-4461-AA31-9A8DCD5E7A9D")!,
        name: "Minervois-la-Livinière",
        description: "Six communes (Azillanet, Cesseras, Siran, La Livinière, Félines-Minervois, dans l'Hérault, et Azille, dans l'Aude) sises sur les contreforts de la Montagne Noire ont droit à l'appellation minervois-la-livinière. **Implanté au cœur de l'aire d'appellation minervois**, dans la région du Petit Causse, le vignoble est délimité à l'ouest par la rivière Ognon, affluent de l'Aude, et à l'est par le massif de la Serre d'Oupia. Exposé sud-sud-est, il s'inscrit dans un paysage tourmenté, alternant avec des collines couvertes de pins, de chênes ou de garrigues. Le climat méditerranéen, dans cette région soustraite aux influences maritimes, apparaît ici particulièrement chaud, sec et ensoleillé. Toutefois, en été, les courants nocturnes provenant des crêtes du Causses apportent de la fraîcheur, ce qui procure aux raisins des conditions de maturation optimales, préservant leur acidité. Les vignes, conduites à petits rendements, produisent exclusivement des vins rouges. Selon la tradition du vignoble languedocien, ceux-ci sont issus de l'assemblage d'au moins deux cépages, avec une proportion majoritaire de grenache, de **mourvèdre** et de **syrah** (ces deux derniers composant au moins 40&nbsp;% de l'ensemble). L'élevage se prolonge de treize à dix-huit mois pour donner des vins puissants, intenses, persistants et de garde.",
        rawWindow: "2 à 4 ans (jusqu’à 8 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `BF9B743D-F25C-4B40-ABF7-1A2C118FA88D` = DefaultWineAppellation(
        id: UUID(uuidString: "BF9B743D-F25C-4B40-ABF7-1A2C118FA88D")!,
        name: "Muscat-de-Frontignan",
        description: "Entre Sète et Mireval, l'appellation muscat-de-frontignan s'étend sur deux communes de l'Hérault, Frontignan et la partie nord-ouest de Vic-la-Gardiole. L'orientation sud-est, la protection des vents du nord par le massif de la Gardiole et l'humidité apportée par les brises marines confèrent un microclimat favorable à la maturation du muscat. La production couvre deux types de vins doux naturels&nbsp;: l'un, traditionnel, est issu d'un élevage en barrique propice à l'oxydation ménagée, l'autre, plus moderne, bénéficie d'une technologie sans faille qui le préserve de l'action de l'oxygène. Il est possible d'élaborer un vin de liqueur en Frontignan présentant plus de 185&nbsp;g/l de sucres résiduels. Cette production reste confidentielle.",
        rawWindow: "2 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `41BF9AD1-B0E2-4FFB-AE99-A5CD3F6F9F84` = DefaultWineAppellation(
        id: UUID(uuidString: "41BF9AD1-B0E2-4FFB-AE99-A5CD3F6F9F84")!,
        name: "Picpoul-de-Pinet",
        description: "Couvrant six communes autour de l'Etang de Thau, sur le littoral, entre Agde, Pézenas et Sète, **Picpoul-de-pinet**, cet ancien terroir délimité de l'**appellation languedoc** (il bénéficiait d'une dénomination complémentaire), dédié de longue date aux vins blancs, est devenu en 2013 une appellation à part entière. Déjà cité par Olivier de Serres au début du XVIIe siècle, le **cépage piquepoul** donne des vins **particulièrement vifs pour la région**, aux arômes de **fleurs blanches et d'agrumes**, avec une **note minérale.****Des vins parfaits pour les huîtres,** notamment celles de Bouzigues produites localement. **Ils sont à apprécier jeunes, dans les trois ans**.",
        rawWindow: "3 ans",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `4E2D9015-1079-42CD-9F63-6E249CFC51BA` = DefaultWineAppellation(
        id: UUID(uuidString: "4E2D9015-1079-42CD-9F63-6E249CFC51BA")!,
        name: "Muscat-de-Mireval",
        description: "Entre Montpellier et Sète, dans l'Hérault, le muscat-de-mireval étend son vignoble sur deux communes&nbsp;: Mireval et une partie de Vic-la-Gardiole. La limite sud de l'appellation est constituée par les étangs et la mer qui jouent un rôle modérateur lors de la canicule estivale. Les sols sont de nature argilo-calcaire. Longtemps resté dans l'ombre de son illustre voisin de Frontignan, ce vin doux naturel joue sa carte personnelle depuis 1959 avec succès.",
        rawWindow: "2 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `14EE51F2-9420-499D-91E7-811C81BEF6B2` = DefaultWineAppellation(
        id: UUID(uuidString: "14EE51F2-9420-499D-91E7-811C81BEF6B2")!,
        name: "Minervois",
        description: "La vigne fait partie des paysages du Minervois depuis plus de deux millénaires. Et Minerve fut l'un des hauts lieux de l'épopée cathare. Aujourd'hui, depuis l'autoroute qui relie Narbonne à Carcassonne, le voyageur peut observer le vignoble disposé en gradins, de l'Aude jusqu'aux contreforts de la Montagne Noire. Dans cette région plutôt calcaire, aux collines douces, la vigne joue avec la garrigue comme sur un damier désordonné.",
        rawWindow: "Rouge : 2 à 4 ans (jusqu’à 8-10 ans pour les grands millésimes).\n Rosé et blanc : à boire jeunes.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `D56CAF17-54BD-4B1F-AF06-DE5EC1C81311` = DefaultWineAppellation(
        id: UUID(uuidString: "D56CAF17-54BD-4B1F-AF06-DE5EC1C81311")!,
        name: "Muscat-de-Lunel",
        description: "Dans l'Hérault, le muscat-de-lunel, vin doux naturel, est issu du terroir de quatre communes&nbsp;: Lunel, Lunel-Viel, Saturargues et Vérargues. Le vignoble est implanté sur des coteaux peu élevés, ouverts sur la mer génératrice d'humidité qui permet aux raisins de supporter les fortes chaleurs estivales. L'essentiel des sols est constitué par des épandages de cailloutis rhodaniens contenus dans une gangue de sable et d'argile. Jadis singularisé par sa forte sucrosité en bouche, le muscat-de-lunel présente aujourd'hui une production de qualité remarquable.",
        rawWindow: "2 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `5459B618-4C43-431F-959D-19FB233D97D1` = DefaultWineAppellation(
        id: UUID(uuidString: "5459B618-4C43-431F-959D-19FB233D97D1")!,
        name: "Muscat-de-Saint-Jean-de-Minervois",
        description: "À l'extrême ouest de l'Hérault, le vignoble du muscat-de-saint-jean-de-minervois – vin doux naturel –, situé sur la seule commune de Saint-Jean-de-Minervois, s'étend au pied du versant sud de la Montagne Noire sur un plateau calcaire dont l'altitude varie entre 250 et 280&nbsp;m. Le vignoble s'est accru notablement ces dernières années, mais les conditions de production restent originales&nbsp;: ici, le muscat parvient à maturité fin septembre-début octobre, lorsque la chaleur devient moins excessive et que la concentration des sucres et des arômes se réalise lentement. L'incidence sur la finesse et la fraîcheur des vins est indéniable.",
        rawWindow: "2 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `848D0A3F-8CF8-42B4-BA38-F3A3100F3169` = DefaultWineAppellation(
        id: UUID(uuidString: "848D0A3F-8CF8-42B4-BA38-F3A3100F3169")!,
        name: "Saint-Chinian",
        description: "L'appellation saint-chinian s'étend sur vingt communes situées au nord-ouest du département de l'Hérault, de part et d'autre de l'Orb et du Vernazobre, entre les aires du minervois au sud-ouest et du faugères au nord-est. Les vignes sont plantées sur les pentes sud-sud-est de la Montagne Noire, des monts de Pardailhan aux monts de Faugères et, vers le sud, jusqu'à la plaine du Biterrois. Au nord du Vernazobre, affluent de l'Orb, dominent les schistes, tandis qu'au sud les terrains sont très variés. Les saint-chinian sont surtout rouges, de deux styles différents. L'AOC produit aussi des rosés et quelques rares blancs.",
        rawWindow: "Rouge : 4 à 5 ans.\n Rosé et blanc : à boire jeunes.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `8BB69ED2-D0E1-462F-BDFC-B74FC766DD07` = DefaultWineAppellation(
        id: UUID(uuidString: "8BB69ED2-D0E1-462F-BDFC-B74FC766DD07")!,
        name: "Pic-Saint-Loup",
        description: "Ce terroir réputé, ancienne dénomination géographique du **Languedoc**, est devenu en 2017 une appellation à part entière réservée aux vins rouges et aux rosés. À 20 km de Montpellier, dans la partie nord-est du **Languedoc,** l’AOC Pic-saint-loup s’étend sur 15 communes de l’Hérault et 2 du Gard, toutes dominées par la pointe acérée du pic Saint-Loup, l’un des sites les plus spectaculaires du vignoble languedocien.\n\nLe vignoble du pic Saint-Loup, implanté sur des sols à dominante calcaire, s’inscrit dans un paysage de garrigue et de pinèdes, succession de crêtes et de combes, à l’écart de grandes vallées. Le climat y est plus frais et plus arrosé que dans le reste du **Languedoc**. Les pluies, qui tombent au printemps et en automne, permettent aux ceps d’éviter sécheresse et stress hydrique&nbsp;; elles autorisent des plantations à densité élevée, facteur de concentration. En août et septembre, l’amplitude thermique importante entre le jour et la nuit favorise l’expression aromatique et l’acidité. Ces conditions sont propices au **cépage****syrah**, l’une des variétés principales de la nouvelle appellation, aux côtés du **grenache** et du **mourvèdre**, et de cépages accessoires (**carignan**, **cinsault**, **counoise, morrastel**, plus le** grenache gris**&nbsp;pour les rosés). Tant les rouges que les rosés doivent toujours assembler au moins deux cépages, la **syrah** étant mise en avant (50 % minimum pour les rouges et 30 % pour les rosés). Les** vins rouges** tirent de la&nbsp;**syrah** leur texture dense, leurs arômes intenses de fruits noirs et de réglisse et leur potentiel. Les rosés sont, eux aussi, toniques et fruités. Le climat donne à tous ces vins relief et fraîcheur.",
        rawWindow: "Rouge : 4 à 8 ans.\n Rosé : à boire dans l’année.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `EC06F129-5BD7-436B-8E72-93C71B5463EB` = DefaultWineAppellation(
        id: UUID(uuidString: "EC06F129-5BD7-436B-8E72-93C71B5463EB")!,
        name: "Terrasses-du-Larzac",
        description: "Ancienne dénomination de l’AOC languedoc, les terrasses-du-larzac sont devenues en 2015 une appellation à part entière (vins rouges). L’aire des terrasses-du-larzac est délimitée dans 32 communes au nord-ouest de Montpellier aux terroirs variés (terrasses de galets, argilo-calcaires, grès, schistes, ruffes&hellip;), tous pauvres et caillouteux.\n\nÉloignée de la mer, elle est limitée au nord du plateau du Larzac, avec pour repère le mont Baudile, qui culmine à 800 m. La bordure abrupte du causse abrite le vignoble des vents du nord, tout en maintenant une atmosphère fraîche.\n\nElle favorise de fortes amplitudes thermiques entre le jour et la nuit (jusqu’à 20 °C en été), avec pour conséquence des maturations lentes et des récoltes plus tardives que près du littoral. Les vins en tirent une grande fraîcheur et une belle expression aromatique.\n\nLes terrasses-du-larzac proviennent de l’assemblage d’au moins trois cépages, choisis parmi neuf variétés.\n\nDeux des variétés principales – syrah, grenache, mourvèdre et carignan – doivent entrer dans leur composition. Après un élevage d’au moins douze mois, ils apparaissent colorés, concentrés, structurés, profonds et frais. Complexe, leur palette aromatique mêle les fruits rouges et noirs, la réglisse, la violette, l’olive noire, la garrigue et les épices, auxquels peuvent s’ajouter avec le temps le cuir, le tabac et la truffe.",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`E04D8587-F00F-4DEA-A10A-470C8DE66415`
    )

    static let `6B32658A-BE5F-477A-BA57-22BC4EF21445` = DefaultWineAppellation(
        id: UUID(uuidString: "6B32658A-BE5F-477A-BA57-22BC4EF21445")!,
        name: "Coteaux-du-Lyonnais",
        description: "Trait d'union entre les vignobles du Beaujolais et de la vallée du Rhône, les coteaux-du-lyonnais maintiennent une tradition viticole commencée dès avant notre ère, grâce à la proximité de Lugdunum, capitale des Gaules. Située sur la bordure orientale du Massif central, l'aire d'appellation est limitée par le cours inférieur de l'Azergues et le Beaujolais au nord, par le Rhône et la Saône à l'est, par les monts du Lyonnais à l'ouest, par la vallée du Gier et le vignoble rhodanien au sud. Le vignoble a connu sa plus grande extension au XIX e&nbsp;siècle, avant la crise du phylloxéra&nbsp;: la vigne s'étendait sur 12000&nbsp;ha, une surface comparable à celle du Beaujolais. Les ravages du puceron, puis le développement de l'agglomération lyonnaise ont considérablement réduit sa superficie, même si les terroirs recouvrent une surface étendue, sur le territoire de 49&nbsp;communes du département du Rhône. Partageant l'espace avec cultures, vergers, prés et bosquets, la vigne ne subsiste que sur quelques îlots, dont deux principaux, l'un, au nord, aux confins du Beaujolais, l'autre, au sud-ouest de Lyon. Les vins sont des rouges, pour les trois quarts.\n\nIssus du **gamay**, vinifiés le plus souvent par macération semi-carbonique comme les beaujolais, ils partagent les mêmes qualités de fruité et de souplesse. Le vignoble produit aussi quelques rosés, ainsi que des blancs à partir du **chardonnay** et de **l'aligoté**.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `048593B4-5982-4D79-9C45-2F9D12504036` = DefaultWineAppellation(
        id: UUID(uuidString: "048593B4-5982-4D79-9C45-2F9D12504036")!,
        name: "Brouilly",
        description: "À l'ouest de Belleville-sur-Saône, l'appellation brouilly –&nbsp;le plus vaste et le plus méridional des crus du Beaujolais –&nbsp;rassemble des vins exprimant la grande diversité des sols granitiques qui leur donnent naissance à l'ouest, sur des roches compactes dures au centre, et sur des sols parfois recouverts d'alluvions à l'est du mont Brouilly.",
        rawWindow: "2 à 3 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `F37C0888-3A00-41CC-8EE5-98C026E6A0CB` = DefaultWineAppellation(
        id: UUID(uuidString: "F37C0888-3A00-41CC-8EE5-98C026E6A0CB")!,
        name: "Beaujolais Supérieur",
        description: "Considéré par beaucoup comme le meilleur rosé de France, ce grand vin de la vallée du Rhône provient d'un vignoble situé dans le département du Gard, sur la rive droite du fleuve, à Tavel et sur quelques parcelles de la commune de Roquemaure. C'est la seule appellation rhodanienne à ne produire que du rosé. Sur des sols de sable, d'alluvions argileuses ou de cailloux roulés, **grenache**, **cinsault**, **mourvèdre**, **syrah**, accompagnés de **carignan** et aussi de cépages blancs donnent un vin généreux, au bouquet floral et fruité, qui accompagnera poisson en sauce, charcuterie et viandes blanches.",
        rawWindow: "10 à 20 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `D0B68BF7-91BC-44A2-8A33-2988C3F340EF` = DefaultWineAppellation(
        id: UUID(uuidString: "D0B68BF7-91BC-44A2-8A33-2988C3F340EF")!,
        name: "Beaujolais",
        description: "Prolongeant la Bourgogne au sud de Mâcon et s'étendant sur 50&nbsp;km jusqu'aux **coteaux du Lyonnais**, le Beaujolais est officiellement rattaché à la Bourgogne viticole. La région, de caractère déjà méridional, doit son nom aux sires de Beaujeu qui en furent les détenteurs jusqu'en 1400. L'appellation beaujolais produit essentiellement des vins rouges à partir du gamay vinifié en grains entiers, selon les principes de la vinification beaujolaise qui apporte des arômes floraux et fruités. Les reliefs anciens aux formes arrondies du nord-ouest de l'aire géographique sont les terrains privilégiés des dix crus du Beaujolais et de **l'appellation beaujolais-villages**. Le vignoble de l'AOC beaujolais est implanté sur des terrains sédimentaires. Ici, la vigne couvre les coteaux en bordure du Massif central, jusqu'à 500&nbsp;m d'altitude.",
        rawWindow: "1 à 2 ans",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `0AAE6E13-B2B9-4CE5-9A43-0DD7F71968D8` = DefaultWineAppellation(
        id: UUID(uuidString: "0AAE6E13-B2B9-4CE5-9A43-0DD7F71968D8")!,
        name: "Juliénas",
        description: "L'aire du juliénas couvre la face sud et sud-ouest du mont de Bessay qui, du haut de ses 478&nbsp;m, constitue au nord l'ultime colline du Beaujolais, aux confins du Mâconnais. Avec Pruzilly et Émeringes, les communes de Jullié et Juliénas délimitent le terroir de ce cru. Leur nom évoque Jules César et ses légions qui occupèrent la région et, peut-être, y cultivaient déjà la vigne. Les sols granitiques et les terres riches d'alluvions sont à l'origine de vins de caractère et de bonne garde.",
        rawWindow: "3 à 7 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `2D1CBE0F-18B0-4628-A2FE-14803D23BF2F` = DefaultWineAppellation(
        id: UUID(uuidString: "2D1CBE0F-18B0-4628-A2FE-14803D23BF2F")!,
        name: "Chiroubles",
        description: "À 10&nbsp;km à l'ouest de la commune de Romanèche-Thorins et de la vallée de la Saône, l'appellation chiroubles est située sur des sols composés de sables granitiques. Elle s'insère entre Villié-Morgon au sud et Fleurie au nord-est, et ne dépasse pas ses limites communales. Dans un cirque naturel, le site de Chiroubles n'a d'égal que la qualité de ses vins, sans aucun doute parmi les plus fins et les plus fruités du Beaujolais.",
        rawWindow: "2 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `4052383A-3BB4-4F9B-82F0-783A79DA5300` = DefaultWineAppellation(
        id: UUID(uuidString: "4052383A-3BB4-4F9B-82F0-783A79DA5300")!,
        name: "Fleurie",
        description: "L'un des dix crus du Beaujolais, réputé depuis le XVIII e&nbsp;siècle. Il est bordé au nord par le **moulin-à-vent**, au midi par le **morgon** et au couchant par le **chiroubles**. Inclus dans les limites de la commune de Fleurie, le vignoble est abrité des vents d'ouest par les monts du Beaujolais et bénéficie d'une exposition sud-est. Il s'étale jusqu'au pied de la chapelle de la Madone, à 425 m d'altitude. Le **gamay** s'enracine dans un sol sableux issu de la désagrégation du granite rose. Ces terrains légers des coteaux engendrent des vins remarquables par leur finesse : le fleurie est souvent présenté comme le plus féminin des crus du Beaujolais, même si les parcelles installées sur du granite ou sur les sols plus profonds et argileux du bas de pente donnent des vins corsés. L'appellation compte 13 climats (lieux-dits), comme La Madone.",
        rawWindow: "2 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `7CBCB266-B524-4466-A590-37F73296AF4E` = DefaultWineAppellation(
        id: UUID(uuidString: "7CBCB266-B524-4466-A590-37F73296AF4E")!,
        name: "Chénas",
        description: "Chénas, «&nbsp;lieu planté de chênes&nbsp;», la plus petite appellation du Beaujolais, s'étend sur les communes de Chénas et de La Chapelle-de-Guinchay de part et d'autre de la Mauvaise, épousant ses versants?; elle domine d'est en ouest l'aire de **moulin-à-vent**, face à la vallée de la Saône. Sur des coteaux granitiques, les sols très sableux, maigres, ne permettent qu'une production limitée mais d'une grande qualité. Moins connus que les moulin-à-vent, la plupart des chénas possèdent le corps et les qualités de leurs prestigieux voisins. Bénéficiant eux aussi d'une macération assez longue pour la région (de dix à douze jours) et parfois d'un élevage dans le chêne, ce sont des vins charnus et chaleureux, qui peuvent vieillir.",
        rawWindow: "4 à 8 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `EA4D1B09-DC16-4725-9718-D73D04EDCEE3` = DefaultWineAppellation(
        id: UUID(uuidString: "EA4D1B09-DC16-4725-9718-D73D04EDCEE3")!,
        name: "Côte-de-Brouilly",
        description: "L'AOC côte-de-brouilly fait partie des dix crus que compte le Beaujolais, tous situés dans la partie nord de la région. L'aire d'appellation s'étend sur quatre communes du département du Rhône&nbsp;: Cercié, Odenas, Quincié-en-Beaujolais et Saint-Lager. Elle est implantée sur les pentes du mont Brouilly (484&nbsp;m), mamelon dominé par la chapelle Notre-Dame aux Raisins construite en 1854 pour implorer la protection de la Vierge contre l'oïdium. Couvrant une grande partie du mont, le vignoble est plus étendu sur les coteaux orientés vers l'est et le sud qui bénéficient d'un bon ensoleillement. On trouve sur le versant méridional du massif deux célèbres climats&nbsp;: l'Héronde à Odenas et l'Écluse à Saint-Lager. Les sols sont issus essentiellement de roches magmatiques et éruptives&nbsp;: granites sur la partie basse des versants orientés vers l'ouest et le nord-est, schistes très durs et diorites, roches d'origine volcaniques appelées «&nbsp;cornes-vertes&nbsp;» ou «&nbsp;pierres-bleues&nbsp;», caractéristiques de l'appellation. Ce terroir très particulier confère aux vins un caractère original, corsé et élégant. Les côte-de-brouilly sont plus charpentés que les brouilly, issus du piémont de la colline.",
        rawWindow: "3 à 6 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `37A27444-D25C-40AE-8570-BE427988ABE2` = DefaultWineAppellation(
        id: UUID(uuidString: "37A27444-D25C-40AE-8570-BE427988ABE2")!,
        name: "Beaujolais-Villages",
        description: "Sélection des meilleurs coteaux du Beaujolais, l'appellation rassemble trente-huit communes de la partie nord du vignoble. La délimitation marque la transition entre les argilo-calcaires du sud du Beaujolais et ne retient que les sols granitiques. À partir du gamay noir, les vignerons obtiennent des vins rouges bien structurés ou fruités. Les rares beaujolais-villages blancs proviennent des plants de chardonnay de ces villages.",
        rawWindow: "Rouge : 2 à 4 ans.\n Blanc et rosé : 1 à 2 ans.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `476C35EB-939F-4708-817D-8165E971C5A1` = DefaultWineAppellation(
        id: UUID(uuidString: "476C35EB-939F-4708-817D-8165E971C5A1")!,
        name: "Morgon",
        description: "Le fruit d'un beaujolais, «&nbsp;le charme d'un bourgogne&nbsp;», se plaît-on à dire du côté de Villié-Morgon pour résumer l'harmonie des vins. Au sein des dix crus du Beaujolais, morgon compte parmi ceux qui s'accordent volontiers quelques années de garde pour révéler la subtilité du terroir schisteux.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `79B47A02-1286-412E-951D-E31586C6CF27` = DefaultWineAppellation(
        id: UUID(uuidString: "79B47A02-1286-412E-951D-E31586C6CF27")!,
        name: "Moulin-à-Vent",
        description: "En haut d'une colline, un moulin est emblématique de la plus ancienne appellation du Beaujolais. Moulin-à-vent –&nbsp;qui n'est pas une commune –&nbsp;regroupe les meilleurs coteaux de Romanèche-Thorins et de Chénas. Ses vignes sont bordées au sud-ouest par le cru de fleurie et au nord par l'appellation chénas. Les gores, granites désagrégés, donnent naissance à un vin à la fois corsé et fin, apte à la garde, et que l'on compare parfois à ses cousins bourguignons de la Côte d'Or.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `B00590E7-C719-4E5D-BCEA-AAD430661F07` = DefaultWineAppellation(
        id: UUID(uuidString: "B00590E7-C719-4E5D-BCEA-AAD430661F07")!,
        name: "Régnié",
        description: "En 1988, la commune de Régnié-Durette est devenue le dixième cru du Beaujolais. Sa situation sur la route menant à la vallée de la Loire lui avait permis d'écouler ses vins jusqu'à Paris dès le XVIII e&nbsp;siècle. Le vignoble couvre des croupes granitiques au nord de la montagne de Brouilly. Implanté sur des terroirs précoces, orientés nord-ouest sud-est, et sur des sols souvent légers, le gamay produit des vins très fruités, alliant finesse et bonne constitution.",
        rawWindow: "3 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `898A1A1C-5DA5-484D-9232-833F9080D23E` = DefaultWineAppellation(
        id: UUID(uuidString: "898A1A1C-5DA5-484D-9232-833F9080D23E")!,
        name: "Saint-Amour",
        description: "À l'extrémité septentrionale du Beaujolais et à 15&nbsp;km de Mâcon, Saint-Amour-Bellevue enfante un cru au nom enchanteur. Ses vignes situées pour la plupart à 250&nbsp;m d'altitude sont plantées sur des terrains granitiques et argilo-siliceux, des cailloutis, des couches schisteuses. Elles produisent un vin pourpre, élégant et charmeur.",
        rawWindow: "1 à 4 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`994DDE33-B08A-416C-969D-56FF4E7FCAA7`
    )

    static let `A1F1F0EF-950F-487A-896C-091A099D590B` = DefaultWineAppellation(
        id: UUID(uuidString: "A1F1F0EF-950F-487A-896C-091A099D590B")!,
        name: "Coteaux-D'Aix-en-Provence",
        description: "Bordée par la Durance au nord et la Méditerranée au sud, par les plaines rhodaniennes à l'ouest et la Provence à l'est, cernant l'étang de Berre, l'AOC coteaux-d'aix-en-provence appartient à la partie occidentale de la Provence calcaire. **Grenache**, **cinsault** et **syrah**, à la base de l'encépagement, donnent des vins rouges et rosés agréables. Les blancs, produits à petite échelle, sont à découvrir.",
        rawWindow: "Rosé et blanc : 2 à 5 ans.\nRouge : 5 à 8 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`AB78EE05-7DAA-4117-914C-B8E3C2DE6872`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `70591428-695D-4C51-8510-6609855D0830` = DefaultWineAppellation(
        id: UUID(uuidString: "70591428-695D-4C51-8510-6609855D0830")!,
        name: "Cassis",
        description: "Entre Marseille et Toulon, au pied de falaises imposantes, un creux de rochers abrite des calanques et, depuis l'époque romaine, un vignoble, dont les limites de l'appellation coïncident aujourd'hui avec celles de la commune de Cassis. Cette aire doit sa renommée à son vin blanc sec, un «&nbsp;vin de bouche&nbsp;», capiteux et parfumé.",
        rawWindow: "Blanc : 2 à 10 ans.\n Rosé : à boire jeune.\n Rouge : 3 à 5 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `344246D8-2553-4BAD-A50A-67F6E26E17BC` = DefaultWineAppellation(
        id: UUID(uuidString: "344246D8-2553-4BAD-A50A-67F6E26E17BC")!,
        name: "Palette",
        description: "Le cirque de Palette, où se rassemblent les hameaux des Troits Sautets, de Palette, de Basteti et de Langesse, se trouve à 4&nbsp;km au sud-est d'Aix-en-Provence. Ce vignoble prestigieux englobe le clos du bon roi René qui y introduisit les raisins muscats. Il produit des vins blancs remarquables d'intensité aromatique, des rosés structurés et fruités, et des vins rouges de garde.",
        rawWindow: "Rouge : 10 à 15 ans.\n Rosé : 1 à 3 ans.\n Blanc : 5 à 10 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`,
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `736DF70A-BC44-48E7-ACED-455C8DEB549F` = DefaultWineAppellation(
        id: UUID(uuidString: "736DF70A-BC44-48E7-ACED-455C8DEB549F")!,
        name: "Coteaux-Varois-en-Provence",
        description: "Au pied de la chaîne de la Sainte-Baume et dans les environs de Brignoles, ancienne résidence d'été des comtes de Provence, le vignoble est réparti sur vingt-huit communes, de façon discontinue, entre les massifs calcaires boisés; chaque vignoble est donc soumis à des conditions climatiques particulières. Entourés par les **côtes-de-provence** et les **coteaux-d'aix**, les coteaux-varois-en-provence affirment leur personnalité&nbsp;: leurs vins sont friands, gais et tendres.",
        rawWindow: "Rosé : à boire jeune.\nRouge : 3 à 5 ans (parfois 10 ans).\nBlanc : 2 à 3 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`85F1DAFA-4494-49D4-A5D1-8160C7719A73`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `06C1B1E3-7A89-4DEE-BF3F-7179EDE34BE3` = DefaultWineAppellation(
        id: UUID(uuidString: "06C1B1E3-7A89-4DEE-BF3F-7179EDE34BE3")!,
        name: "Bandol",
        description: "L'aire de l'appellation bandol, ou **Vin de Bandol**, adossée à un vaste amphithéâtre de collines, s'étend sur huit communes (Bandol, Le Beausset, La Cadière-d'Azur, Le Castellet, Évenos, Ollioules, Saint-Cyr-sur-Mer et Sanary) aux portes de Toulon. Dans ce contexte géographique, l'association d'un climat chaud à influence maritime et d'un sol squelettique à influence calcaire a offert au mourvèdre, cépage exigeant, sa niche écologique. Les vins issus de ce terroir aiment à se faire attendre avant de dévoiler leur secret. Grands seigneurs de bandol, les vins rouges, puissants et charpentés, sont de longue garde. Les rosés occupent une place croissante, tandis que les blancs constituent une production plus confidentielle.",
        rawWindow: "Rosé et blanc : 1 à 3 ans.\nRouge : 10 à 15 ans (et plus).\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `302BA67B-0408-45DB-8ED3-55031B47DF9D` = DefaultWineAppellation(
        id: UUID(uuidString: "302BA67B-0408-45DB-8ED3-55031B47DF9D")!,
        name: "Baux-de-Provence (les)",
        description: "Au pied des Alpilles, l'extraordinaire citadelle des Baux, fondée sur les ruines d'un oppidum celte, veille aujourd'hui sur les vignes et les oliviers. Sur ce terroir situé au sud de Saint-Rémy-de-Provence, le vignoble est implanté sur des épandages de pente et des colluvions. Il produit des vins rouges structurés et des rosés qui concilient robustesse et finesse.",
        rawWindow: "Rouge : 5 à 10 ans.\n Rosé et blanc : 2 à 3 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`AB78EE05-7DAA-4117-914C-B8E3C2DE6872`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `70CBCDD3-4630-47CF-8CF5-48DFFAEF1260` = DefaultWineAppellation(
        id: UUID(uuidString: "70CBCDD3-4630-47CF-8CF5-48DFFAEF1260")!,
        name: "Bellet",
        description: "Cette minuscule appellation tournée à la fois vers le massif du Mercantour et la baie des Anges, sur la rive gauche du Var, propose une production réduite et presque introuvable ailleurs qu'à Nice. Ce vignoble de collines au bord de la mer repose sur des terrasses graveleuses. Il est complanté de cépages originaux qui donnent naissance à des vins blancs aromatiques, à des vins rosés soyeux et frais, à des vins rouges charnus.",
        rawWindow: "Rouge : plus de 10 ans.\n Blanc et rosé : 2 à 5 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`B99F3A1A-73DA-4BA0-A4B0-86BF96576760`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `3C2DC4C1-E407-4EF1-9AD2-14E01D4729EC` = DefaultWineAppellation(
        id: UUID(uuidString: "3C2DC4C1-E407-4EF1-9AD2-14E01D4729EC")!,
        name: "Côtes-de-Provence",
        description: "La vigne marque le paysage provençal, longeant les calanques et les plages entre Marseille et Nice, remontant les vallées de l'Arc et de l'Argens, et se gorgeant des senteurs de thym et de romarin. L'appellation côtes-de-provence se déploie sur trois départements (Var, Bouches-du-Rhône, Alpes-Maritimes). L'ensemble est soumis au climat méditerranéen, mais le relief désordonné et l'influence maritime déterminent des mésoclimats. La situation géo-pédologique est aussi diversifiée. On distingue une Provence cristalline – Maures et Estérel –&nbsp;et une Provence calcaire à l'ouest de la première. L'AOC possède un encépagement varié. Les trois couleurs sont vinifiées mais le rosé l'emporte.",
        rawWindow: "Rosé et blanc : à boire jeunes.\n Rouge : 5 à 8 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`85F1DAFA-4494-49D4-A5D1-8160C7719A73`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`
        ],
        region: DefaultWineRegion.`70AD89CE-7D8A-40F0-A10A-40F73A37F0C2`
    )

    static let `B16D715F-99D1-454F-94EB-7A4E9EB7EB2B` = DefaultWineAppellation(
        id: UUID(uuidString: "B16D715F-99D1-454F-94EB-7A4E9EB7EB2B")!,
        name: "Alsace Chasselas Ou Gutedel",
        description: "Deux variétés distinctes portent le nom de chasselas, le chasselas blanc et le chasselas rose, toutes deux appelées gutedel en alsacien. L'une comme l'autre appartiennent à la catégorie des cépages les plus précoces, dits de «&nbsp;première époque&nbsp;». Il y a une quarantaine d'années, le chasselas occupait encore plus de 20&nbsp;% du vignoble. Aujourd'hui, il ne représente plus que 0,6&nbsp;% de la surface plantée. Non admis en grand cru, il ne figure que dans l'encépagement de l'AOC alsace. Il entre essentiellement dans la composition de l'**edelzwicke**r. De ce fait, l'appellation alsace chasselas ne se trouve que très rarement sur le marché. Qu'il se présente à l'état pur (alsace chasselas ou gutedel) ou en assemblage (**alsace edelzwicker**), ce cépage produit toujours des vins secs et légers.",
        rawWindow: "2 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3373BE45-2B07-46E0-9C74-BD72BFE52709`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `37A9F58D-6B85-488B-A0A1-A6CA256FABA9` = DefaultWineAppellation(
        id: UUID(uuidString: "37A9F58D-6B85-488B-A0A1-A6CA256FABA9")!,
        name: "Alsace Klevener-de-Heiligenstein",
        description: "Le klevener de Heiligenstein, connu depuis des siècles en Alsace, n'est autre que le savagnin rose. Il était désigné sous le nom de «&nbsp;traminer&nbsp;», vieux cépage qui serait originaire d'un village du Tyrol italien (Tramin). Le klevener avait presque disparu, ayant fait place progressivement à sa variante épicée, le **gewurztraminer**, dans l'ensemble de la région. Considéré comme le vin le plus confidentiel d'Alsace, il reste vivace à Heiligenstein et dans quatre autres communes voisines du Bas-Rhin, dont celle d'Obernai. À l'instar du gewurztraminer, ce cépage présente une grappe assez petite et des baies à la peau particulièrement épaisse de couleur rose à maturité. Ses vins sont originaux, à la fois très bien charpentés, élégants et discrètement aromatiques.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3A0AE8B2-7EEA-41E3-9DAF-79BB699E81BC`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `6066FA16-B7B1-4DA2-8CFB-4F2698F6F366` = DefaultWineAppellation(
        id: UUID(uuidString: "6066FA16-B7B1-4DA2-8CFB-4F2698F6F366")!,
        name: "Alsace Pinot Noir",
        description: "Venu très tôt de Bourgogne, le pinot noir est un cépage prestigieux qui était déjà cultivé au Moyen Âge. S'il a dû longtemps côtoyer d'autres variétés rouges, l'AOC alsace lui réserve à présent une place exclusive pour la production de rouges ou rosés. Après avoir presque disparu, ne se maintenant que dans quelques villages, le pinot noir a de nouveau progressé pour occuper aujourd'hui environ 10&nbsp;% du vignoble alsacien. Son expression n'est pas uniforme&nbsp;: il donne naissance non seulement à des rosés (schillerwein) ou à des clairets, mais aussi à de véritables vins rouges bien structurés, parfois élevés en foudre ou en fût de chêne.",
        rawWindow: "Rouge : 2 à 10 ans.\n Rosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `6E27B339-1507-40C4-8AF1-31BE965C79B9` = DefaultWineAppellation(
        id: UUID(uuidString: "6E27B339-1507-40C4-8AF1-31BE965C79B9")!,
        name: "Alsace Pinot Gris",
        description: "Hongrois d'après la légende – ce qui lui valut longtemps le nom de tokay –, mais sans doute bourguignon d'origine, le pinot gris est implanté en Alsace depuis le XVII e&nbsp;siècle. Il affectionne les terrains tertiaires de la région de Cleebourg, mais aussi les sols calcaires et volcaniques. Il est présent dans l'ensemble de l'appellation alsace, et sa culture s'est considérablement développée ces quarante dernières années, sa part passant de 4 à 15&nbsp;% de l'encépagement. Exceptionnel par sa puissance, ce vin se distingue aussi par son moelleux et son aptitude au vieillissement.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `0CDB8374-928F-4A85-B46C-42F2C177CF88` = DefaultWineAppellation(
        id: UUID(uuidString: "0CDB8374-928F-4A85-B46C-42F2C177CF88")!,
        name: "Alsace Muscat",
        description: "Cité dès le XVI e&nbsp;siècle, le muscat, à la différence des autres vins d'Alsace, n'est pas le fruit d'un seul cépage, mais celui d'un équilibre subtil entre trois variétés. Selon la précocité de la maturation et les expositions, les producteurs jouent sur la part relative des cépages qui entrent dans la composition du vin&nbsp;: le **muscat blanc à petits grains**, dit muscat de Frontignan, le **muscat ottonel** et, de façon marginale, le **muscat rose à petits grains**. L'alsace muscat provient le plus souvent des deux cépages principaux. Le muscat ottonel, variété plus récente, plus précoce et largement spécifique au vignoble alsacien, peut s'afficher sur l'étiquette.",
        rawWindow: "1 à 2 ans (5 ans ou plus si l’on recherche le caractère anisé lié à l’évolution).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`,
            DefaultGrapeVariety.`0C1C17F9-0F31-440B-8CCE-D5BEB106FC14`,
            DefaultGrapeVariety.`8ABEAFBE-2B61-4F42-AD4F-D2043D7AE76B`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `5CBA0D2A-2FAA-47A3-8D81-E045DC8BB577` = DefaultWineAppellation(
        id: UUID(uuidString: "5CBA0D2A-2FAA-47A3-8D81-E045DC8BB577")!,
        name: "Alsace Grand Cru",
        description: "En Alsace, le cépage tient la vedette : sur l'étiquette, l'appellation d'origine est presque toujours suivie de l'indication d'une variété. Pourtant, la notion de grand cru est très ancienne dans la région. L'AOC n'a cependant été mise en place qu'en 1975. En 1983, un décret a défini vingt-cinq lieux-dits, suivi d'un autre, en 1992, qui en a reconnu cinquante. Enfin, le Kaefferkopf s'est ajouté à la liste en 2007. Très bien situés et exposés, offrant aux raisins d'excellentes conditions de maturation, voire de surmaturation, ces grands crus, souvent mis en valeur par les ordres monastiques ou les évêchés, sont parfois mentionnés dès le haut Moyen Âge. Aujourd'hui strictement délimités, ils sont assortis de disciplines de production de plus en plus strictes, notamment en matière de rendements et de teneur en sucres. Le degré alcoolique est au minimum de 11&nbsp;% vol. pour les riesling et muscat et de 12,5&nbsp;% vol. pour les pinot gris et gewurztraminer. Sur ces terroirs parfois très pentus, les vendanges sont manuelles ; l'enrichissement est limité, voire interdit. Si l'on excepte le sylvaner, autorisé depuis 2005 en remplacement du muscat dans le grand cru Zotzenberg (Mittelberheim) et en assemblage avec le gewurztraminer, le pinot gris et le riesling dans l'Altenberg de Bergheim, l'appellation est réservée aux quatre «&nbsp;cépages nobles&nbsp;»&nbsp;: le riesling, le gewurztraminer, le muscat et le pinot gris, mentionnés sur l'étiquette sauf lorsqu'ils naissent d'assemblage dans les grands crus Altenberg de Bergheim et Kaefferkopf. Le nom du grand cru figure obligatoirement sur l'étiquette. On peut aussi y trouver les sélections de grains nobles et les vendanges tardives, une&nbsp;mention qui s’applique aux vins issus de raisins vendangés tardivement et à ce titre surmûris, donc plus riches en sucre qu’une vendange normale. Production haut de gamme, les alsaces grands crus représentent à peine 4&nbsp;% des vins d'Alsace.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`725D4FFD-C4ED-4E76-933A-927D21D9D77E`,
            DefaultGrapeVariety.`0C1C17F9-0F31-440B-8CCE-D5BEB106FC14`,
            DefaultGrapeVariety.`97417FBF-45B1-4A70-A784-CD5257170DD5`,
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`8ABEAFBE-2B61-4F42-AD4F-D2043D7AE76B`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `05ECF5A9-373E-4410-B51B-7286D1D20FE8` = DefaultWineAppellation(
        id: UUID(uuidString: "05ECF5A9-373E-4410-B51B-7286D1D20FE8")!,
        name: "Alsace Pinot Blanc Ou Klevner",
        description: "Sous ces deux dénominations (la seconde étant un vieux nom alsacien), le vin de cette appellation peut provenir de deux cépages&nbsp;: **le pinot blanc** vrai et **l'auxerrois** blanc. Ce sont deux variétés assez peu exigeantes, capables de donner des résultats remarquables dans des situations moyennes, car leurs vins allient agréablement fraîcheur, corps et souplesse. Dans la gamme des vins d'Alsace, le pinot blanc représente le juste milieu, et il n'est pas rare qu'il surclasse certains **rieslings**. Du point de vue gastronomique, il s'accorde avec de nombreux plats, à l'exception des fromages et des desserts.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `A0853BE6-8C7B-4C80-AEAD-DB8C7CCF3C89` = DefaultWineAppellation(
        id: UUID(uuidString: "A0853BE6-8C7B-4C80-AEAD-DB8C7CCF3C89")!,
        name: "Alsace Gewurztraminer",
        description: "Le **cépage gewurztraminer** est apparu à la fin du XIX e&nbsp;siècle en Alsace, où il s'est substitué peu à peu au traminer. Vigoureux, il est aussi très précoce, et ses rendements sont faibles (55&nbsp;hl/ha). La couleur de ses baies, colorées en rose à maturité, est caractéristique. Cultivé surtout en coteau, ce plant donne des vins blancs corsés et bien charpentés, au bouquet inimitable et d'une grande intensité.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`97417FBF-45B1-4A70-A784-CD5257170DD5`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `8CEBF038-E073-498A-9A2E-B87C1976AA7B` = DefaultWineAppellation(
        id: UUID(uuidString: "8CEBF038-E073-498A-9A2E-B87C1976AA7B")!,
        name: "Alsace Riesling",
        description: "Cépage rhénan par excellence, le riesling aurait déjà été cultivé à l'époque où les légions romaines occupaient l'Alsace. Le climat de la vallée du Rhin lui convient parfaitement et sa culture a beaucoup progressé. On rencontre cette variété tardive sur la plupart des formations géologiques, particulièrement sur les terrains acides d'origine granitique ou gréseuse, mais aussi sur les terrains sédimentaires des collines sous-vosgiennes et les sols graveleux constitués par les cônes de déjection des vallées. Très régulier en production, le riesling produit des vins appréciés pour leur finesse aromatique, leur grande élégance et, souvent, pour leur aptitude à la garde.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`725D4FFD-C4ED-4E76-933A-927D21D9D77E`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `CE387C1E-2AC9-40FC-8432-00E3F57B407C` = DefaultWineAppellation(
        id: UUID(uuidString: "CE387C1E-2AC9-40FC-8432-00E3F57B407C")!,
        name: "Alsace Edelzwicker",
        description: "Parmi les appellations alsaciennes, l'edelzwicker occupe une place particulière. Alors que la plupart des vins d'Alsace s'identifient par leur cépage, l'alsace edelzwicker est un vin d'assemblage mariant plusieurs cépages. Zwicker signifie assemblage. L'ajout du préfixe Edel (noble) marque la présence dans sa composition de cépages nobles tels que le **riesling**, le **muscat**, le **pinot gris** ou le **gewurztraminer**. Les différentes variétés peuvent être vinifiées ensemble ou séparément, sans contrainte de pourcentage, et l'indication du millésime n'est pas obligatoire. Même si son caractère peut varier en fonction des cépages qui le compose, l'edelzwicker reste généralement un vin agréable, léger et fruité. Particulièrement apprécié par les Alsaciens, il est servi au pichet dans la plupart des winstubs (bistrots alsaciens).",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `0A9049BA-D4AF-48DE-829F-38D8DBF0825B` = DefaultWineAppellation(
        id: UUID(uuidString: "0A9049BA-D4AF-48DE-829F-38D8DBF0825B")!,
        name: "Crémant-D'Alsace",
        description: "Élaborés en Alsace depuis la fin du XIX e&nbsp;siècle, les vins mousseux offraient des qualités disparates, reflets de méthodes qui n'avaient rien d'uniformes&nbsp;: les vins élaborés en cuve close, moins fins, coexistaient avec ceux issus de la méthode traditionnelle reposant sur une seconde fermentation en bouteille, comme pour le champagne. La reconnaissance de l'appellation crémant-d'alsace, en 1976, a donné un nouvel essor à la production de ces derniers, élaborés en quantité réduite depuis le début du XX e&nbsp;siècle. L'Alsace se situe aujourd'hui en tête des régions françaises pour son volume de production de crémant, qui représente plus du cinquième de l'offre du vignoble alsacien. Comme pour le champagne, les vendanges manuelles sont de rigueur. Quant à l'élevage sur lies, il ne peut être inférieur à neuf mois.** Les cépages qui peuvent entrer dans la composition du crémant-d'alsace sont le pinot blanc**, **l'auxerrois**, le **pinot gris**, le **riesling**, le **chardonnay** et le **pinot noir**, qui est le seul cépage à produire des vins rosés, et plus rarement des blancs de noirs. Si le chardonnay (utilisé en Alsace uniquement pour le crémant) compose exclusivement certaines cuvées, le pinot blanc est le plus utilisé. Le crémant-d'alsace se distingue par sa légèreté et sa finesse.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`725D4FFD-C4ED-4E76-933A-927D21D9D77E`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `94621AEC-FBF4-4366-99F8-F2EB9E3CB690` = DefaultWineAppellation(
        id: UUID(uuidString: "94621AEC-FBF4-4366-99F8-F2EB9E3CB690")!,
        name: "Alsace Sylvaner",
        description: "Originaire d'Autriche, le sylvaner est connu dans cette région depuis le XVIIIe&nbsp;siècle. Ce cépage blanc plutôt tardif offre une production assez abondante et très régulière pour une situation septentrionale. Il a longtemps fourni pléthore de vins de comptoir issus de la plaine bas-rhinoise, vendus en vrac comme entrée de gamme de la production régionale. En quarante ans, sa part dans l'encépagement alsacien a été réduite de deux tiers et sa superficie s'est considérablement réduite. Il occupe désormais de meilleures situations où il donne des vins plus qualitatifs. S'il a été admis dans le grand cru Zotzenberg, il est surtout présent dans l'appellation alsace. Il fournit des vins légers, assez vifs et fruités.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`53DFEB00-DE5E-4534-9047-57132119DFF4`
        ],
        region: DefaultWineRegion.`2DF79C95-FCF4-409E-9EA9-16F1CB3B5528`
    )

    static let `7A68752C-0F15-4DED-A264-136994839830` = DefaultWineAppellation(
        id: UUID(uuidString: "7A68752C-0F15-4DED-A264-136994839830")!,
        name: "Crépy",
        description: "S'allongeant sur une cinquantaine de kilomètres, la région des Graves doit son nom à la nature de son terroir&nbsp;: celui-ci est constitué principalement par des terrasses construites par la Garonne et ses ancêtres qui ont déposé une grande variété de débris caillouteux (galets et graviers originaires des Pyrénées et du Massif central).Depuis 1987, les vins qui y sont produits ne sont pas tous commercialisés comme graves, le secteur de **Pessac-Léognan** bénéficiant d'une appellation spécifique, tout en conservant la possibilité de préciser sur les étiquettes les mentions «&nbsp;vin de graves&nbsp;», «&nbsp;grand vin de graves&nbsp;» ou «&nbsp;cru classé de graves&nbsp;». Concrètement, ce sont les crus du sud de la région qui revendiquent **l'appellation graves**. L'une des particularités de l'AOC réside dans l'équilibre qui s'est établi entre les superficies consacrées aux vignobles rouges et blancs secs. Les graves rouges possèdent une structure corsée et élégante qui permet un bon vieillissement. Leur bouquet, finement fumé, est particulièrement typé. Les blancs secs, élégants et charnus, sont parmi les meilleurs de la Gironde. Les plus grands, fréquemment élevés en barrique, gagnent en richesse et en complexité après quelques années de garde. **On trouve aussi des vins moelleux qui ont toujours leurs amateurs et qui sont vendus sous l'appellation graves supérieures**.",
        rawWindow: "Rouge : 5 à 15 ans.\nBlanc : 4 à 12 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3373BE45-2B07-46E0-9C74-BD72BFE52709`,
            DefaultGrapeVariety.`D5F9574D-0224-4F71-A990-9F7C0DA3E7C4`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `F6C8A556-5499-40EE-9768-C239A201B498` = DefaultWineAppellation(
        id: UUID(uuidString: "F6C8A556-5499-40EE-9768-C239A201B498")!,
        name: "Crémant-de-Savoie",
        description: "**Le dernier des crémants français à avoir accéder à l’appellation, en 2014**. Comme les autres crémants, il est élaboré à partir de la méthode traditionnelle de seconde fermentation en bouteille et avec une durée de vieillissement en bouteille d’au moins douze mois après le tirage. **Le crémant-de-savoie est produit à partir de 60&nbsp;%&nbsp;de&nbsp;cépages&nbsp;blancs locaux, avec un minimum de 40&nbsp;%&nbsp;de&nbsp;jacquère et le reste en altesse**, **le chardonnay&nbsp;ne pouvant excéder 40&nbsp;%**. Sont toutefois autorisés en complément l’**aligoté**, la&nbsp;**mondeuse** blanche, le&nbsp;**chasselas**&nbsp;et la&nbsp;**molette&nbsp;**pour le département de la&nbsp;Haute-Savoie&nbsp;exclusivement, ainsi que les cépages noirs (**gamay**, mondeuse, **pinot noir**).",
        rawWindow: "À boire jeune",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`4C7A80C4-0580-4E12-B5A3-D36020D7CE0F`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `05210577-B509-4418-B830-895AF8BE75BC` = DefaultWineAppellation(
        id: UUID(uuidString: "05210577-B509-4418-B830-895AF8BE75BC")!,
        name: "Seyssel",
        description: "Coincé entre les Préalpes du nord et l'extrémité méridionale du massif jurassien, le vignoble de Seyssel occupe les deux rives du Rhône entre Haute-Savoie et Ain. Sur les communes de Corbonod et de Seyssel, il couvre les pentes douces de la cluse du Rhône avant que le fleuve ne s'enfonce dans le Bugey. Les vins sont issus pour l'essentiel de terrains morainiques, adossés aux chaînons jurassiques. Les cépages altesse et molette leur lèguent une grande finesse. Ne cherchez pas dans les seyssel puissance et opulence mais plutôt esprit et retenue.",
        rawWindow: "2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`1772D7FF-A4D9-402D-8480-8528C1895FEF`,
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `D9C37E19-0A05-46AD-AA48-21763F1BD1AE` = DefaultWineAppellation(
        id: UUID(uuidString: "D9C37E19-0A05-46AD-AA48-21763F1BD1AE")!,
        name: "Roussette-de-Savoie",
        description: "**L'appellation roussette-de-savoie désigne des vins blancs secs élaborés à partir d'un cépage blanc typique de la région, l'altesse, autrement appelé roussette**. Le vignoble se trouve essentiellement à Frangy, le long de la rivière des Usses, à Monthoux et à Marestel, au bord du lac du Bourget. D'une grande finesse, les vins se bonifient après quelques années de garde, alors que la plupart des crus de la région sont à boire jeunes.",
        rawWindow: "2 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `AED859E5-10B5-49AA-AC4E-9499116744AD` = DefaultWineAppellation(
        id: UUID(uuidString: "AED859E5-10B5-49AA-AC4E-9499116744AD")!,
        name: "Bugey",
        description: "Dans le département de l'Ain, le vignoble du Bugey occupe les basses pentes des monts du Jura, depuis Bourg-en-Bresse jusqu'à Ambérieu-en-Bugey. Il est implanté sur une grande variété de sols marneux et argileux ou calcaires. L'encépagement reflète la situation de carrefour de la région. Parmi les cépages, notez la présence du poulsard jurassien qui entre dans les vins mousseux rosés de la région de Cerdon, élaborés selon la méthode ancestrale. En blanc, la roussette du Bugey célèbre le cépage altesse. Le célèbre gastronome Anthelme Brillat-Savarin, qui naquit à Belley en 1794, fut un défenseur des vins du bugey. AOVDQS depuis 1958, bugey est devenu AOC en 2009.",
        rawWindow: "Rouge et blanc tranquilles : 2 ans.\n Rosé et effervescents : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`4C7A80C4-0580-4E12-B5A3-D36020D7CE0F`,
            DefaultGrapeVariety.`1772D7FF-A4D9-402D-8480-8528C1895FEF`,
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`,
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`A37D2815-1373-47F8-98F0-17A2E0570BDB`,
            DefaultGrapeVariety.`D4271EB0-8150-4AB3-AB4D-A2FDAEA8FF23`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `175FC82F-1D1E-4E1B-B47B-0642A17AB569` = DefaultWineAppellation(
        id: UUID(uuidString: "175FC82F-1D1E-4E1B-B47B-0642A17AB569")!,
        name: "Savoie (vin De)",
        description: "Du lac Léman à la rive droite de l'Isère, des îlots de vignes, exposés au sud, ponctuent les vallées de la Savoie et de la Haute-Savoie. Le climat est ici tempéré par la proximité des lacs. Sur les premiers coteaux des Alpes sont produits des vins vifs comme l'air de montagne&nbsp;: des vins blancs issus le plus souvent d'un cépage local, la **jacquère**; des vins rouges à base de mondeuse, du **gamay** importé du Beaujolais ou même du **pinot noir** bourguignon; des vins rosés issus de gamay, ou blancs, pétillants à Ayze.",
        rawWindow: "Rouge : 2 à 6 ans.\nBlanc : 2 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`,
            DefaultGrapeVariety.`3373BE45-2B07-46E0-9C74-BD72BFE52709`,
            DefaultGrapeVariety.`547AFEC9-65EC-454A-A439-504999811F12`,
            DefaultGrapeVariety.`4C7A80C4-0580-4E12-B5A3-D36020D7CE0F`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`D5F9574D-0224-4F71-A990-9F7C0DA3E7C4`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`D4271EB0-8150-4AB3-AB4D-A2FDAEA8FF23`
        ],
        region: DefaultWineRegion.`BD44911B-BF60-4759-B943-2098B3176BB2`
    )

    static let `86796705-145C-4563-9321-ADB351DD9DD5` = DefaultWineAppellation(
        id: UUID(uuidString: "86796705-145C-4563-9321-ADB351DD9DD5")!,
        name: "Muscat-de-Rivesaltes",
        description: "C'est entre Corbières au nord, Canigou à l'ouest, Pyrénées au sud et Méditerranée à l'est que s'étend le royaume du muscat-de-rivesaltes, et ce, depuis plus de 2000&nbsp;ans comme l'attestent les écrits de Pline l'Ancien. Avec 2&nbsp;600&nbsp;heures d'ensoleillement par an, moins de 600&nbsp;mm de précipitations, une sécheresse estivale marquée et une tramontane omniprésente, les **muscat d'Alexandrie** et **muscat à petits grains** produisent les 252&nbsp;g/l de sucres naturels indispensables lors de la cueillette pour élaborer des vins doux naturels.",
        rawWindow: "2 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`,
            DefaultGrapeVariety.`B9BB109A-7E00-4732-9012-11FBF5ACC02F`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `4F631D1C-7B2B-4D2E-8C57-3D71CDD8BEE7` = DefaultWineAppellation(
        id: UUID(uuidString: "4F631D1C-7B2B-4D2E-8C57-3D71CDD8BEE7")!,
        name: "Maury Sec",
        description: "**Réservée à l'origine aux vins doux naturels,&nbsp;l'appellation maury est accordée à partir du millésime 2011 aux vins secs produits sur le même terroir** (communes de Maury, Tautavel, Saint-Paul et Rasiguères). **Les vignerons de cette aire d'appellation proposaient auparavant leurs vins secs en AOC côtes-du-roussillon-villages**. **Le grenache noir**, emblématique de l'appellation, entre à hauteur de 60&nbsp;% minimum (et 80&nbsp;% maximum) dans les assemblages. Les vins bénéficient d'un élevage de six mois au minimum.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `B6AE75C5-EF9C-4621-9865-905F8780E9F0` = DefaultWineAppellation(
        id: UUID(uuidString: "B6AE75C5-EF9C-4621-9865-905F8780E9F0")!,
        name: "Banyuls Grand Cru",
        description: "Ce vin doux naturel est le seul en France à bénéficier de la mention grand cru. Le banyuls grand cru provient exclusivement de quatre communes des Pyrénées-Orientales&nbsp;: Collioure, Port-Vendres, Banyuls-sur-Mer et Cerbère, qui bordent la Côte Vermeille, à l'extrémité orientale des Pyrénées. Dominant la Méditerranée, le vignoble est implanté sur des sols arides de schistes, s'accrochant à des pentes abruptes traditionnellement aménagées en terrasses. \nLe banyuls grand cru se distingue du banyuls par son assemblage qui met en valeur le grenache noir –&nbsp;cépage qui compte pour au moins 75&nbsp;% de l'encépagement&nbsp;– ainsi que par son élevage&nbsp;: un vieillissement obligatoirement sous bois, qui ne peut être inférieur à une durée de trente mois. Les vins sont issus des meilleures cuvées. Ils sont concentrés, puissants et aptes à une très longue garde. Les hors d'âge ne sont commercialisés qu'à partir de la cinquième année après la récolte.",
        rawWindow: "Plusieurs dizaines d’années.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `FC59ED9C-CCDE-479E-8A7D-CE65C8067DEA` = DefaultWineAppellation(
        id: UUID(uuidString: "FC59ED9C-CCDE-479E-8A7D-CE65C8067DEA")!,
        name: "Rivesaltes",
        description: "Le vignoble de Rivesaltes, le plus vaste avec celui du **muscat-de-rivesaltes**, couvre la plus grande partie du Roussillon viticole (Pyrénées-Orientales) et empiète sur la zone des corbières (Aude). Adaptés au climat chaud et sec, aux étés ventés,** les cépages grenache**, **muscats**, **macabeu** et **malvoisie** livrent des raisins naturellement riches. Très divers, les rivesaltes ont pour point commun de résulter du mutage des moûts en fermentation à l'alcool neutre. En rouge, le vigneron décide de la durée de macération, de l'instant du mutage et de son application (sur jus de coule ou sur grains). En blanc, il procède ou non à une macération, mais c'est surtout par l'élevage qu'il marque son empreinte. L'élevage, selon sa durée et le procédé utilisé (à l'abri de l'air ou en milieu oxydatif), détermine des styles très divers qui sont indiqués sur l'étiquette par les mentions grenat, rosé, tuilé, ambré, hors d'âge, rancio.",
        rawWindow: "30 ans et plus.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `E16A5D44-7055-4A87-A93C-DD94115053A4` = DefaultWineAppellation(
        id: UUID(uuidString: "E16A5D44-7055-4A87-A93C-DD94115053A4")!,
        name: "Côtes-du-Roussillon-Villages",
        description: "Au nord du Roussillon, entre le massif des Corbières et la Têt, la vigne est omniprésente sur des terrains d'une grande diversité géologique&nbsp;: terrasses de galets, schistes, arènes granitiques?; cette variété des sols est à l'origine de la reconnaissance des différents terroirs&nbsp;: quatre communes – Caramany, Latour-de-France, Tautavel et Lesquerde –&nbsp;peuvent adjoindre leur nom à l'appellation villages qui produit des vins fortement charpentés, issus des mêmes cépages que les côtes-du-roussillon mais avec des contraintes de qualité plus exigeantes.",
        rawWindow: "3 à 8 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `8DC7E93C-395C-4EC0-AD39-9BAE431102E4` = DefaultWineAppellation(
        id: UUID(uuidString: "8DC7E93C-395C-4EC0-AD39-9BAE431102E4")!,
        name: "Banyuls",
        description: "Bien qu'au bord de la mer, les communes de la Côte Vermeille (Collioure, Port-Vendres, Banyuls, Cerbère), retenues dans l'aire de banyuls, sont montagnardes?; elles sont cernées par l'Espagne au sud, la Méditerranée à l'est et les Pyrénées à l'ouest. Sur des sols schisteux, le vignoble a des rendements très faibles (20&nbsp;hl/ha en moyenne). Ce vin doux naturel se conjugue aussi bien en rimages (vins d'un seul millésime avec mise en bouteilles précoce, afin de préserver au mieux les arômes du fruit) qu'en vins d'assemblage ou de millésimes anciens. Les vignerons lui réservent un élevage d'un an. Puissant et rond, ce vin se révèle d'une longueur exceptionnelle.",
        rawWindow: "VDN rouge et blanc : plusieurs dizaines d’années.\n VDN rosé : à boire jeune.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `A9B3E614-F30A-44E6-B588-64A68D03F36F` = DefaultWineAppellation(
        id: UUID(uuidString: "A9B3E614-F30A-44E6-B588-64A68D03F36F")!,
        name: "Maury",
        description: "À 30 km de Perpignan, le vignoble de maury se présente comme un quadrilatère de 3&nbsp;km de large sur 11&nbsp;km de long. Il commence dans la plaine d'Estagel pour se terminer, à l'ouest, aux portes de Saint-Paul-de-Fenouillet. La vigne occupe de petites collines dans une zone dépressionnaire délimitée au nord et au sud par de remarquables falaises calcaires. C'est sur l'une de ces arêtes que s'accroche le château cathare de Queribus. Le terroir de ce vin doux naturel est relativement homogène, avec un cépage majoritaire –&nbsp;le grenache noir –&nbsp;et des sols constitués presque exclusivement de schistes noirs, d'où le nom de Maury&nbsp;: Amarioles ou Amariolas signifiant «&nbsp;terre noire&nbsp;». Depuis 2011, l'AOC produit également des vins rouges secs à dominante de grenache.",
        rawWindow: "30 ans et plus.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `014DF612-2A25-43E0-B946-EE600383DBED` = DefaultWineAppellation(
        id: UUID(uuidString: "014DF612-2A25-43E0-B946-EE600383DBED")!,
        name: "Collioure",
        description: "Portant le nom d'un charmant petit port méditerranéen, l'apppellation **collioure** couvre le même terroir que celui de l'appellation&nbsp;**banyuls**&nbsp;; l'appellation&nbsp;regroupe les quatre communes de Collioure, Port-Vendres, Banyuls-sur-mer et Cerbère. Les **collioures rouges et les collioures rosés** assemblent principalement grenache noir, mourvèdre et syrah, le cinsault et le carignan entrant comme cépages accessoires. Issus de petits rendements, ce sont des vins colorés, chaleureux aux arômes de fruits rouges bien mûrs. Les **collioures rosés** sont aromatiques, riches et néanmoins nerveux. Les **collioures blancs**, qui font la part belle aux grenaches blanc et gris, sont produits depuis le millésime 2002.&nbsp;Le vignoble jouit sur les sols schisteux d'un climat fait de soleil, de tramontane et de vent marin.",
        rawWindow: "Rouge et blanc : 5 ans et plus.\nRosé : 2 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`B55184E7-0E53-48CB-BEC1-6B7AEEFFBB1E`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `F184A94A-F9F5-40BB-B8F9-DCD22BD89F0F` = DefaultWineAppellation(
        id: UUID(uuidString: "F184A94A-F9F5-40BB-B8F9-DCD22BD89F0F")!,
        name: "Côtes-du-Roussillon",
        description: "Près de la frontière espagnole, entre Corbières et Pyrénées, les premiers ceps ont été implantés par les Grecs au VII e&nbsp;siècle avant J.-C. Aujourd'hui, les côtes-du-roussillon sont produits par cent dix-huit communes des Pyrénées-Orientales. La vigne, taillée en gobelets, s'est adaptée à la sécheresse, au vent et à des terroirs variés. La vinification en raisins entiers donne d'excellents résultats en rouge. Les vins rosés vinifiés par saignée présentent une richesse alcoolique de 12&nbsp;% vol. environ. Les vins blancs sont les meilleurs alliés des coquillages. Au sud de Perpignan, depuis 2003, on produit des côtes-du-roussillon Les Aspres, une dénomination attribuée aux vins rouges après identification parcellaire.",
        rawWindow: "Rouge : 1 à 5 ans Blanc et rosé : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`C584F8B0-D1DF-4770-BC46-432B0EA9784F`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`C94A532E-09BE-4F73-AD82-E89BDAF3AE9C`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`CDD18855-D69C-4429-81D5-50C49FFBFA9A`
    )

    static let `F767618C-E3DB-4B2B-93B5-5241655E3D36` = DefaultWineAppellation(
        id: UUID(uuidString: "F767618C-E3DB-4B2B-93B5-5241655E3D36")!,
        name: "Bordeaux Haut-Benauge",
        description: "Située sur la rive droite de la Garonne, l'aire d'appellation s'étend dans la partie centrale de l'entre-deux-mers sur neuf communes (Arbis, Cantois, Escoussans, Gornac, Ladaux, Mourens, Soulignac, Saint-Pierre-de-Bat et Targon). L'AOC bordeaux Haut-benauge doit son nom à l'ancienne vicomté que commandait le château de Benauge, somptueuse forteresse médiévale située à Arbis. Sur des sols composés de boulbènes et de calcaire, jouissant d'un climat propice au développement du botrytis (pourriture noble), cette appellation produit des vins blancs moelleux puissants et vifs.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `E9BD8507-C9F0-4A71-B8DB-38E53844D949` = DefaultWineAppellation(
        id: UUID(uuidString: "E9BD8507-C9F0-4A71-B8DB-38E53844D949")!,
        name: "Premières-Côtes-de-Bordeaux",
        description: "Implantée sur les pieds et les versants de coteaux de la rive droite de la Garonne, ainsi que sur la bordure du plateau de l'Entre-deux-Mers, l'aire d'appellation s'étend de Bassens, aux portes de Bordeaux, à Saint-Maixant, au sud-est de la Gironde. Comprenant une quarantaine de communes, elle forme une étroite bande de 60&nbsp;km de long sur 5&nbsp;km de large&nbsp;: on y dénombre près d'une vingtaine de types de sols. **Depuis 2009, les vins rouges de cette zone sont commercialisés sous le nom de cadillac-côtes-de-bordeaux**. **L'AOC premières-côtes-de-bordeaux est depuis cette date réservée aux vins blancs moelleux**. Dans les faits, les vins se concentrent dans le sud de l'appellation sur une zone qui tend à se confondre avec l'aire du cadillac. Mais seul ce dernier provient obligatoirement d'une récolte manuelle par tries de raisins botrytisés ou passerillés sur souche. La plupart des premières-côtes-de-bordeaux sont plus moelleux que liquoreux.",
        rawWindow: "4 à 8 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `C09DE0B3-AD00-4461-B2E9-57E42AFA1B92` = DefaultWineAppellation(
        id: UUID(uuidString: "C09DE0B3-AD00-4461-B2E9-57E42AFA1B92")!,
        name: "Sainte-Foy-Bordeaux",
        description: "À l'extrémité orientale de l'Entre-deux-Mers et aux portes du Périgord, sur les rives de la Dordogne, la bastide médiévale de **Sainte-Foy-la-Grande** a donné son nom au vignoble de **Sainte-Foy-Côtes-de-Bordeaux,** qui propose des vins rouges marqués par le&nbsp;**merlot** ainsi que quelques blancs, surtout secs.\n\n**Superficie : 370 ha**\n\n**Production : 17 250 hl (90% rouge)**&nbsp;",
        rawWindow: "Rouge : 3 à 7 ans.\nBlanc : 1 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `6DC9E458-10DE-40F1-98A0-86C29DF69ABC` = DefaultWineAppellation(
        id: UUID(uuidString: "6DC9E458-10DE-40F1-98A0-86C29DF69ABC")!,
        name: "Côtes-de-Bordeaux-Saint-Macaire",
        description: "Située sur la rive droite de la Garonne, l'AOC côtes-de-bordeaux-saint-macaire prolonge vers le sud-est celles de **cadillac** et des premières-côtes-de-bordeaux. Les coteaux exposés vers le sud bénéficient d'un ensoleillement exceptionnel. La présence de l'importante masse d'eau de la Garonne donne naissance à des brouillards nocturnes qui, associés à la chaleur du jour, permettent dans certains cas à la pourriture noble de se développer. Cette petite appellation à la lisière méridionale de l'Entre-deux-Mers produit des vins blancs secs et doux, ces derniers moelleux ou liquoreux selon les années. On trouve sur l'aire d'appellation de plus en plus de vignes rouges qui donnent des vins commercialisés sous l'étiquette **Bordeaux** ou **Bordeaux supérieur**.",
        rawWindow: "Blanc sec : 2 à 3 ans.\nBlanc moelleux : 3 à 6 ans (jusqu’à 10 ans pour les liquoreux et pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `13506726-726D-4458-B0A0-E40BAB889F56` = DefaultWineAppellation(
        id: UUID(uuidString: "13506726-726D-4458-B0A0-E40BAB889F56")!,
        name: "Entre-Deux-Mers",
        description: "Au Moyen Âge, l'expression «&nbsp;entre-deux-mers&nbsp;» faisait référence à la particularité de cette contrée, comprise entre la Garonne et la Dordogne, cours d'eau remontés par la marée. L'appellation constituée d'un plateau à dominante argilo-calcaire ne comprend pas les coteaux dominant la Garonne ni les communes de Vayres et d'Arveyres. Mais l'aire de l'entre-deux-mers est suffisamment vaste pour expliquer la multiplicité des terroirs. **Le cépage le plus important est le sauvignon**, qui communique aux vins un arôme particulier, très apprécié en vin jeune. Sec, frais, vif et fruité, l'entre-deux-mers affirme sa personnalité par sa sève.",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `CF9C73B5-1909-4CCA-9E7F-98260E401BFC` = DefaultWineAppellation(
        id: UUID(uuidString: "CF9C73B5-1909-4CCA-9E7F-98260E401BFC")!,
        name: "Graves-de-Vayres",
        description: "Au nord-ouest du plateau de l'Entre-deux-Mers, sur la rive gauche de la Dordogne, Vayres est célèbre par son imposant château Renaissance qui domine la rivière. Son terroir est constitué de plaques de graves et de sables, formant des terrasses recouvertes de cailloux. **Les graves-de-vayres rouges sont souples et fruités**. **Les blancs, qui étaient autrefois mœlleux, sont aujourd'hui essentiellement secs**. **Ils se rapprochent des entre-deux-mers**.",
        rawWindow: "Rouge : 3 à 6 ans.\nBlanc : 1 à 3 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `AAC2628F-2EAF-44CC-B884-D143775FB2A5` = DefaultWineAppellation(
        id: UUID(uuidString: "AAC2628F-2EAF-44CC-B884-D143775FB2A5")!,
        name: "Entre-Deux-Mers Haut-Benauge",
        description: "Targon et neuf communes environnantes ont le droit d'ajouter la mention haut-benauge à **l'appellation entre-deux-mers**&nbsp;: Arbis, Cantois, Escoussans, Gornac, Ladaux, Mourens, Soulignac, Saint-Pierre-de-Bat et Targon. L**e vignoble occupe la même aire d'appellation que celle des bordeaux Haut-benauge, qui fournit surtout des blancs moelleux**. Ces deux AOC sont assez rarement revendiquées. Elles doivent leur existence autant à l'histoire qu'à la géographie&nbsp;: l'aire d'appellation correspond à l'ancienne vicomté que commandait le château de Benauge, à Arbis, et cette mémoire commune a entraîné un fort sentiment d'appartenance de la part des vignerons. Le territoire viticole de l'AOC entre-deux-mers Haut-benauge offre des vins blancs secs qui, à l'instar des entre-deux-mers, se caractérisent par leur vivacité, leur fruité et leur élégance.",
        rawWindow: "Blanc secs : 2 à 3 ans.\nBlanc moelleux (AOC bordeaux-haut-benauge, rare) : 3 à 8 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `101BCB35-8A5C-4F88-B632-3C595598CFE4` = DefaultWineAppellation(
        id: UUID(uuidString: "101BCB35-8A5C-4F88-B632-3C595598CFE4")!,
        name: "Côtes-de-Bordeaux",
        description: "Définie en 2009 et réservée aux vins rouges, c’est l’appellation commune à tous les vignobles de côtes (côtes-de-bourg exceptées), implantés sur la rive droite de la Gironde autour de **Blaye**, sur la rive droite de la Garonne de part et d’autre de **Cadillac**, et sur la rive droite de la Dordogne, autour de Castillon et de Francs. Trouvant leur identité dans un terroir de coteau et dans des sols à dominante argilo-calcaire, les côtes-de-bordeaux peuvent assembler des vins issus de plusieurs de ces quatre terroirs. Le **merlot**, généralement majoritaire, est associé aux autres cépages du Bordelais. Si les rendements autorisés sont légèrement supérieurs à ceux des autres vins de côtes, le profil des vins est similaire : la plupart conjuguent une certaine charpente et une belle rondeur, ce qui les rend faciles à accorder avec la plupart des viandes.",
        rawWindow: "3 à 7 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `75B84097-317C-4A30-A721-0B362513D73D` = DefaultWineAppellation(
        id: UUID(uuidString: "75B84097-317C-4A30-A721-0B362513D73D")!,
        name: "Cadillac-Côtes-de-Bordeaux",
        description: "L'appellation s'étend sur une soixantaine de kilomètres, le long de la rive droite de la Garonne, des portes de Bordeaux jusqu'à Saint-Maixant, en face du Sauternais. Les vignobles sont implantés sur des coteaux pentus, bien drainés et souvent orientés au sud, qui dominent le fleuve et offrent de magnifiques points de vue. Le terroir associe le pied de coteau, le versant abrupt et le plateau. Les sols sont extrêmement variés&nbsp;: en bordure de la Garonne, ils sont constitués d'alluvions récentes?; sur les coteaux, on trouve des sols graveleux ou calcaires?; l'argile se fait plus abondante au fur et à mesure que l'on s'éloigne du fleuve. Anciennement appelée premières-côtes-de-bordeaux, l'AOC cadillac-côtes-de-bordeaux, reconnue en 2009, est réservée aux rouges, qui jouissent depuis longtemps d'une réelle notoriété. Colorés, corsés et puissants, typiques des vins de côtes, ceux-ci dévoilent aussi des arômes fruités et une rondeur charmeuse, legs du merlot, cépage souvent majoritaire.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`CB5736F0-F3E1-431C-A22B-16F8C47C54EC`
    )

    static let `26265671-1C3F-4052-A463-A6ED7AF735A8` = DefaultWineAppellation(
        id: UUID(uuidString: "26265671-1C3F-4052-A463-A6ED7AF735A8")!,
        name: "Graves Supérieures",
        description: "**S'allongeant sur une cinquantaine de kilomètres, la région des Graves doit son nom à la nature de son terroir**: celui-ci est constitué principalement par des terrasses construites par la Garonne et ses ancêtres qui ont déposé une grande variété de débris caillouteux (galets et graviers originaires des Pyrénées et du Massif central). **Depuis 1987, les vins qui y sont produits ne sont pas tous commercialisés comme graves, le secteur de&nbsp;Pessac-Léognan bénéficiant d'une appellation spécifique**, tout en conservant la possibilité de préciser sur les étiquettes les mentions &#34vin de graves&#34, &#34grand vin de graves&#34 ou &#34cru classé de graves&#34. Concrètement, ce sont les crus du sud de la région qui revendiquent l'appellation graves. Les vins moelleux, qui ont toujours leurs amateurs, sont vendus sous l'appellation graves supérieures.",
        rawWindow: "Jusqu’à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`E9A28BA3-0621-44D2-A8ED-6E40C96C8F30`
    )

    static let `9CAD018A-A764-48B8-81F5-9A124AC30608` = DefaultWineAppellation(
        id: UUID(uuidString: "9CAD018A-A764-48B8-81F5-9A124AC30608")!,
        name: "Graves",
        description: "**Le terroir est si renommé qu'il est un des rares à avoir donné son nom à une appellation**. Situé sur la rive gauche de la Garonne, limité au sud-ouest par la forêt des Landes, il est constitué de terrasses de galets et de graviers modelées en croupes. Au Moyen Âge, c'était le vignoble de Bordeaux, qui fournissait la plus grande partie des clarets, vins rouges légers dont raffolaient les Anglais. **Aujourd'hui, les graves produisent à la fois des vins rouges et des blancs secs**. Très vaste, l'aire de l'appellation longe la rive gauche de la Garonne sur une soixantaine de kilomètres, jusqu'à Langon. **Depuis 1987, la zone nord, proche de Bordeaux, bénéficie de l'AOC pessac-léognan**.",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`
        ],
        region: DefaultWineRegion.`E9A28BA3-0621-44D2-A8ED-6E40C96C8F30`
    )

    static let `1AC47750-189B-414C-9097-D4710278BFCA` = DefaultWineAppellation(
        id: UUID(uuidString: "1AC47750-189B-414C-9097-D4710278BFCA")!,
        name: "Pessac-Léognan",
        description: "**Autrefois AOC graves**, en partie enclavé dans la banlieue bordelaise, le vignoble de Pessac-Léognan est l'un des plus anciens de la région, déjà célèbre au Moyen Âge. Aujourd'hui, il s'étend sur les communes de Cadaujac, Canéjean, Gradignan, Léognan, Martillac, Mérignac, Pessac, Saint-Médard-d'Eyrans, Talence et Villenave-d'Ornon. Sol pauvre, croupes aux fortes pentes, réseau hydrographique bien constitué, son terroir forme un ensemble homogène. Ses qualités viticoles sont suffisamment exceptionnelles pour qu'en 1855, Haut-Brion, cru emblématique dès le XVII e&nbsp;siècle, ait pu figurer aux côtés des châteaux médocains dans le groupe des premiers crus du classement impérial. Pourtant, il a fallu attendre 1953 pour que d'autres crus soient classés en rouge et 1959 pour que naisse le classement des vins blancs.",
        rawWindow: "Rouge : 7 à 20 ans (plus pour certains crus et pour les grands millésimes).\nBlanc : 2 à 5 ans (jusqu’à 10-15 ans pour certains crus et pour les grands millésimes).\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`E9A28BA3-0621-44D2-A8ED-6E40C96C8F30`
    )

    static let `8ECFB61A-44E8-4726-B7C7-9400E373A673` = DefaultWineAppellation(
        id: UUID(uuidString: "8ECFB61A-44E8-4726-B7C7-9400E373A673")!,
        name: "Côtes-de-Blaye",
        description: "L'appellation cotes-de-blaye, aujourd'hui très peu utilisée, s'applique à des vins blancs secs assemblant à côté des traditionnels **sauvignon**, **sémillon** et **muscadelle**, une forte proportion de **colombard**.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`33DB891E-D8B4-4C46-B660-1C74677AE880`
    )

    static let `8B00B48E-1A77-46D1-87DC-EDCD8C7A3D05` = DefaultWineAppellation(
        id: UUID(uuidString: "8B00B48E-1A77-46D1-87DC-EDCD8C7A3D05")!,
        name: "Côtes-de-Bourg",
        description: "Ce vignoble d'estuaire situé sur la rive droite de la Dordogne et de la Gironde est implanté sur trois lignes de côtes parallèles aux rives?; il encadre la citadelle de Bourg. D'une belle couleur, les vins rouges, fruités et charnus, ont une bonne aptitude au vieillissement. Les vins blancs secs constituent une production confidentielle, mais très intéressante par son niveau qualitatif.",
        rawWindow: "Rouge : 3 à 8 ans.\n Blanc : 2 à 3 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`33DB891E-D8B4-4C46-B660-1C74677AE880`
    )

    static let `379D8A4D-E277-4F36-897B-1DC65E9F2F1C` = DefaultWineAppellation(
        id: UUID(uuidString: "379D8A4D-E277-4F36-897B-1DC65E9F2F1C")!,
        name: "Blaye",
        description: "L'appellation, qui tire son nom de la fière citadelle construite par Vauban et qui s'étend dans trois cantons autour de la cité, connaît un regain d'intérêt depuis qu'en 2000 une nouvelle charte qualitative encourage la production de vins rouges charpentés et de garde, élevés dix-huit mois minimum.",
        rawWindow: "4 à 8 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`33DB891E-D8B4-4C46-B660-1C74677AE880`
    )

    static let `4B03ABF8-1FCA-48E4-A63E-06402DCD528D` = DefaultWineAppellation(
        id: UUID(uuidString: "4B03ABF8-1FCA-48E4-A63E-06402DCD528D")!,
        name: "Blaye-Côtes-de-Bordeaux",
        description: "Aux confins de la Charente, sur la rive droite de la Gironde, la citadelle construite par Vauban pour protéger Bordeaux des invasions navales anglaises et hollandaises est l'emblème de Blaye qui, avec Saint-Savin et Saint-Ciers, donne des vins de côtes, rouges ou blancs secs. L'appellation blaye bénéficie d'une charte de qualité qui encourage la production de rouges de garde, élevés dix-huit mois en fût. **L'AOC côtes-de-blaye**, très peu renvendiquée, s'applique à des blancs secs à forte proportion de colombard.",
        rawWindow: "Rouge : 3 à 7 ans.\nBlanc : dans l’année ou de 2 à 3 ans pour certains vins.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`33DB891E-D8B4-4C46-B660-1C74677AE880`
    )

    static let `54B1BA7F-F0A1-4312-9897-C08BD73D51DA` = DefaultWineAppellation(
        id: UUID(uuidString: "54B1BA7F-F0A1-4312-9897-C08BD73D51DA")!,
        name: "Montagne-Saint-Émilion",
        description: "L'une des appellations situées au nord de Saint-Émilion, et qui partagent avec leur prestigieuse voisine de doux vallonnements favorables à la viticulture. Produisant elles aussi des vins rouges souvent marqués par le **merlot**, elles étaient appelées naguère «satellites de Saint-Émilion». Les producteurs de ce secteur ont eu l'autorisation en 1936 d'ajouter au nom de leur village celui de Saint-Émilion sur leurs étiquettes. Terre de petites exploitations, Montagne-Saint-Émilion n'en possède pas moins un riche patrimoine architectural par ses édifices romans, ses anciennes forteresses, tel le château des Tours, ou ses demeures néo-classiques. La variété des terroirs de Montagne-Saint-Émilion se retrouve dans les vins&nbsp;: on distingue ceux issus des terrains argilo-calcaires, caractéristiques des côtes par leur robustesse, et ceux des sols plus graveleux qui gagnent en finesse ce qu'ils perdent en puissance.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `DA602C84-14E5-4F5B-B479-C774AACAB730` = DefaultWineAppellation(
        id: UUID(uuidString: "DA602C84-14E5-4F5B-B479-C774AACAB730")!,
        name: "Saint-Émilion",
        description: "**Saint-Émilion, jolie cité médiévale du Libournais classée au patrimoine mondial de l'Unesco**, donne son nom à deux appellations de vin rouge&nbsp;: **Saint-Emilion** et **Saint-émilion grand cru**.&nbsp;## Vins d'appellation &#34Saint-Émilion&#34\n\nL'aire d'appellation, située à l'est de la ville Saint-Emilion, est constituée d'un plateau calcaire dominant la Dordogne au sud et limité par le ruisseau de la Barbanne au nord. Ce pays de petites exploitations possède des terroirs d'une grande diversité. Les vins ont ainsi chacun leur personnalité. L'Union des **producteurs de Saint-Emilion**, structure coopérative, a joué un rôle non négligeable dans le développement du **saint-émilion**.\n\nTout autour de la ville, le plateau calcaire et la côte argilo-calcaire (d’où proviennent de nombreux crus classés) donnent **des vins d’une belle couleur, corsés et charpentés**.&nbsp;\nMais l’essentiel de l’appellation est représenté par les terrains d’alluvions sableuses descendant vers la Dordogne, qui produisent de bons vins. Pour les cépages, on note une nette domination du merlot, complété par le cabernet franc, appelé bouchet dans cette région, et, dans une moindre mesure, par le cabernet-sauvignon.\n**L’appellation saint-émilion** peut être revendiquée par tous les vins produits dans la commune de **Saint-Émilion** et dans huit autres villages environnants, qui ont succédé aux paroisses dépendant de la jurade, l'ancienne juridiction médiévale&nbsp;:&nbsp;Saint-Étienne-de-Lisse, Saint-Hippolyte, Saint-Laurent-des-Combes, Saint-Pey-d'Armens, Saint-Christophe-des-Bardes, Saint-Sulpice-de-Faleyrens, Vignonet et une partie de Libourne.",
        rawWindow: "2 à 6 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `7C3F1A8F-A4A2-432B-AE09-E864E56A2D56` = DefaultWineAppellation(
        id: UUID(uuidString: "7C3F1A8F-A4A2-432B-AE09-E864E56A2D56")!,
        name: "Pomerol Bordeaux",
        description: "## Géographie, paysages, sols et microclimat de Pomerol\n\n&nbsp;\n\nLe terroir sur l'AOC Pomerol est composé principalement de **graves, d'argile et de sable**. Avec sa **terrasse au-dessus de l'Isle**, affluent de la **Dordogne**, et ses nombreux hameaux, **Pomerol**, commune sans village, aurait pu n'être qu'une banale banlieue de Libourne. Mais la nature l'a dotée d'un **terroir d'exception** qui lui a valu de devenir une **prestigieuse appellation de vins rouges**, malgré sa superficie réduite. La **topographie** semble ignorer les creux et les bosses, l'humilité du relief étant encore accentuée par l'**omniprésence de la vigne** et par l'absence de monuments importants. Les** graves** constituent l'élément **majoritaire** et **unificateur****du terroir.** Très **originaux,** les pomerol présentent l'avantage de pouvoir être **bus jeunes** tout en faisant preuve d'une **grande aptitude au vieillissement.&nbsp;**Comme tous les grands terroirs, Pomerol est issu du travail d'une **rivière**, **l'Ilse**, née dans le** Massif central**.&nbsp;Le cours d'eau a commencé par démanteler la table calcaire pour y déposer des nappes de cailloux, travaillées ensuite par l'érosion. Il en résulte un **enchevêtrement de graves ou de cailloux roulés.** La complexité des terrains semble inextricable : toutefois, il est possible de distinguer **quatre grands ensembles**: au sud, vers Libourne, une zone sablonneuse ; près de Saint-Émilion, des graves sur sables ou argilesau centre de l'AOC, des graves sur ou parfois sous des argiles (Petrus) ; au nord-est et au nord-ouest des graves plus fines et plus sablonneuses.\n\n&nbsp;## Quelle est la production des vins de l'AOC Pomerol ?&nbsp;\n\n&nbsp;\n\nSituée dans la **sous-région du Libournais**, l'appellation pomerol est une des plus petites appellations girondines avec une superficie de **785 hectares**. Contrairement à sa voisine Saint-Émilion, l'appellation pomerol n'a** jamais bénéficié d'un classement officiel**. Ainsi, les hiérarchies ont été établies de façon **informelle,** principalement par les** prix de vente des vins**. L'AOC Pomerol produit entre **30 000&nbsp;hectolitres** et **40&nbsp;500 hectolitres de vin par an.&nbsp;**\n\n&nbsp;## Histoire du Pomerol\n\n&nbsp;\n\nL'histoire de Pomerol remonte à l**'époque romaine**, mais la viticulture ne s'y est développée qu'à partir du **Moyen Âge.** Pendant des siècles, les vins de Pomerol ont été consommés localement, sans grande notoriété. Ce n'est qu'au **XIXe siècle** que la qualité des vins de Pomerol commence à être reconnue au-delà de la région bordelaise.&nbsp;Au XIXème siècle, les&nbsp;habitants de Pomerol sont restés insensibles à la mode des châteaux du vin, **d'architecture éclectique**. Il existe cependant des demeures élégantes à l'image du **Château de Sales** (XVIIème siècle), ou le **Château Beauregard,** l'une des plus charmantes construction du XVIIIème siècle, reproduite par les **Guggenheim** dans leur propriété new-yorkaise de Long Island.&nbsp;\n\nLa réputation de pomerol continue de croître au** XXe siècle**, grâce notamment au **travail et à la technique des viticulteurs locaux** qui ont su exploiter le terroir unique de l'appellation.&nbsp;Les cépages traditionnels de l'appellation sont le **merlot** et le **cabernet franc,** mais **d'autres cépages ont été introduits au fil des ans.&nbsp;**\n\nBien que l'appellation pomerol n'ait pas été officiellement classée, les vins qui en sont issus sont souvent considérés comme les **égaux**&nbsp;**des premiers crus classés de la région bordelaise**. Cette reconnaissance est due à la **qualité exceptionnelle des vins de Pomerol.&nbsp;**L'absense de**&nbsp;**classement n'a pas empêché à&nbsp;l'appellation de se construire une renommée solide**&nbsp;**au fil du temps. En tête de liste se trouve le fameux **Petrus,** l'un des vins les plus&nbsp;recherché. Avec une production annuelle limitée à **quelques milliers de bouteilles**, Petrus est également l'un des vins les plus **spéculatifs** et **extrêmement cher.**\n\nAujourd'hui, l'appellation pomerol continue de produire des **vins d'exception**, convoités par les **amateurs du monde entier**. La recherche constante de **l'excellence** additionnée au **respect des traditions** font de pomerol une **appellation incontournable de la viticulture bordelaise.**",
        rawWindow: "7 à 20 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `6B332E0F-B2B3-4FC2-B2C9-48463492F767` = DefaultWineAppellation(
        id: UUID(uuidString: "6B332E0F-B2B3-4FC2-B2C9-48463492F767")!,
        name: "Canon-Fronsac",
        description: "Au XX e&nbsp;siècle, les **AOC fronsac** et canon-fronsac ont connu une transformation complète de leur encépagement. En 1900, ce vignoble du Libournais était dominé par le **malbec**. Aujourd'hui, ce cépage, très sensible au gel, a connu une forte régression, tombant à 1&nbsp;% à peine de l'ensemble, tandis que le **merlot** est passé de 20 à 75&nbsp;%. Avec fronsac, canon-fronsac est l'une des appellations communales du Bordelais les plus intéressantes. Célèbres au XVIII e&nbsp;siècle puis tombés quelque peu dans l'oubli, ces vins connaissent un regain de notoriété tout en gardant des prix intéressants.",
        rawWindow: "5 à 10 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `1AD730F7-0A98-4653-8097-35DED13B316A` = DefaultWineAppellation(
        id: UUID(uuidString: "1AD730F7-0A98-4653-8097-35DED13B316A")!,
        name: "Lussac-Saint-Émilion",
        description: "Proche de la célèbre cité médiévale de Saint-Émilion et de son vignoble, **cette appellation est bordée au sud par&nbsp;puisseguin-saint-émilion et&nbsp;saint-georges-saint-émilion et à l'ouest par montagne-saint-émilion**. On regroupe parfois encore sous le terme de «&nbsp;satellites de Saint-Émilion&nbsp;» ces appellations. On y trouve le même paysage vallonné, parsemé de bosquets et de hameaux ainsi que le même substrat géologique. Comme il se doit en Libournais, **lussac est une appellation vouée aux vins rouges**, et **elle privilégie souvent le cépage merlot dans les assemblages**. Riche en vestiges gallo-romains, son vignoble semble particulièrement ancien. À l'instar des autres appellations situées au nord de Saint-Émilion, son terroir est marqué par la trilogie coteau, plateau et bas de pente. Au nord de la commune de Lussac, le plateau est recouvert de sables du Périgord, à l'origine de vins agréables jeunes. Au sud, le coteau argilo-calcaire forme un arc de cercle bien exposé; il engendre des vins de plus longue garde.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `5E1E57C1-B17A-46B3-8003-157AB50DB001` = DefaultWineAppellation(
        id: UUID(uuidString: "5E1E57C1-B17A-46B3-8003-157AB50DB001")!,
        name: "Castillon-Côtes-de-Bordeaux",
        description: "C'est près de Castillon, en 1453, que se déroula la fameuse bataille qui défit les troupes anglaises du général John Talbot et mit un terme à la guerre de Cent Ans. À 50&nbsp;km de Bordeaux et à 40&nbsp;km de Bergerac, jouxtant à l'est **l'AOC saint-émilion** et situées aux portes du Périgord, les castillon-côtes-de-bordeaux, anciennement côtes-de-castillon, bénéficient d'un nombre important de vignes âgées aptes à produire un raisin concentré. On y distingue deux grands types de terroirs&nbsp;: d'une part, une plaine à l'origine de vins chaleureux et souples, d'autre part, un coteau et un plateau qui permettent d'obtenir une production plus robuste et de plus longue garde.",
        rawWindow: "4 à 9 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `3638D5F1-9DE1-4DCC-B536-8806FF9339BA` = DefaultWineAppellation(
        id: UUID(uuidString: "3638D5F1-9DE1-4DCC-B536-8806FF9339BA")!,
        name: "Lalande-de-Pomerol",
        description: "Séparé de Pomerol par le ruisseau de la Barbanne, le terroir du lalande-de-pomerol est constitué de terrasses alluviales. Toutefois, recouvrant deux communes, Lalande-de-Pomerol et Néac, l'aire d'appellation présente plus de diversité dans les paysages. À l'ouest, la commune de Lalande aime les horizons plats, tandis qu'à l'est, celle de Néac prend du relief et se fait plus accidentée, notamment dans sa partie orientale. **Comme dans la plupart des appellations du Libournais, le cépage merlot est très présent**. Il donne des vins agréables jeunes. Cependant, reflétant la diversité des terroirs, les lalande-de-pomerol offrent plusieurs visages&nbsp;: certains misent sur leur fruité sans offrir de réelles perspectives de conservation; d'autres, charpentés et de garde, sont assez proches de leurs voisins les pomerol.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `A8B58BF0-FF1B-4D44-B101-109989B98519` = DefaultWineAppellation(
        id: UUID(uuidString: "A8B58BF0-FF1B-4D44-B101-109989B98519")!,
        name: "Fronsac",
        description: "Sur le tertre de Fronsac, dominant le confluent de la Dordogne et de l'Isle, Charlemagne avait fait bâtir une forteresse pour contrôler la navigation ainsi que la route terrestre menant à Bordeaux. Étape importante sur la route de Bordeaux à Paris avant la révolution des transports, le Fronsadais s'est retrouvé à l'écart des grands axes de communication, ignoré par le chemin de fer. Sa notoriété en a souffert. S'étendant sur six communes, l'aire se distingue par son terroir de coteau. À l'intérieur de l'AOC fronsac, deux communes ont droit à une appellation spécifique&nbsp;: Fronsac et Saint-Michel-de-Fronsac, domaine du **canon-fronsac**. Longtemps méconnus, les fronsac bénéficient de prix intéressants.",
        rawWindow: "5 à 10 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `C6EC82C9-CC33-4467-8601-C2EFA122E9E5` = DefaultWineAppellation(
        id: UUID(uuidString: "C6EC82C9-CC33-4467-8601-C2EFA122E9E5")!,
        name: "Francs-Côtes-de-Bordeaux",
        description: "À l'est du **Libournais**, cette appellation anciennement bordeaux-côtes-de-francs est la plus continentale du Bordelais. Elle est implantée sur des coteaux argilo-calcaires et marneux parmi les plus élevés de la Gironde. Corsé, le francs-côtes-de-bordeaux rouge est un vin riche, tannique et d'une bonne aptitude à la garde. Le volume de production des vins blancs secs et liquoreux est assez confidentiel, mais leur qualité les rend très plaisants.",
        rawWindow: "Rouge : 3 à 8 ans.\nBlanc sec : à boire jeune.\nBlanc moelleux : 2 à 5 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `DEB8329D-4A72-4C43-8CFD-F7E57924C095` = DefaultWineAppellation(
        id: UUID(uuidString: "DEB8329D-4A72-4C43-8CFD-F7E57924C095")!,
        name: "Saint-Émilion Grand Cru",
        description: "Cette appellation ne s'individualise ni par un terroir ni même par un cépage spécifique. Si son aire se confond avec celle de **saint-émilion**, seuls les meilleurs vins ont droit à l'appellation grand cru&nbsp;: la plupart proviennent de la bordure du plateau calcaire et de la côte argilo-calcaire. Ils doivent obligatoirement être mis en bouteilles à la propriété et être soumis à une double dégustation. Le classement des grands crus, établi en 1955, est original car il est revu tous les dix ans. Il distingue deux catégories de crus&nbsp;: les premiers grands crus classés (A et B) et les grands crus classés. Deux châteaux appartiennent au premier groupe&nbsp;: Ausone et Cheval-Blanc. Treize sont des premiers grands crus classés B, cinquante-sept des grands crus classés. Ces derniers représentent un peu plus de 12&nbsp;% de la production de l'AOC, les treize premiers représentant moins de 3&nbsp;%.",
        rawWindow: "5 à 20 ans (plus pour les crus classés).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `00F70583-1E9E-4674-80D5-4E3F5038FC47` = DefaultWineAppellation(
        id: UUID(uuidString: "00F70583-1E9E-4674-80D5-4E3F5038FC47")!,
        name: "Puisseguin-Saint-Émilion",
        description: "**Puisseguin est la plus orientale des appellations voisines de Saint-Émilion**. Là ne s'arrête pas son originalité. Sa personnalité tient à l'histoire, qui dut y être souvent troublée, comme en témoignent les souterrains creusés par ses habitants. **Elle est aussi liée au terroir, qui réserve une part prépondérante au merlot**. Pays de petites exploitations, l'appellation réserve à l'amateur de belles découvertes.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `B32685CE-34BE-4360-8234-7D5E2174DC7B` = DefaultWineAppellation(
        id: UUID(uuidString: "B32685CE-34BE-4360-8234-7D5E2174DC7B")!,
        name: "Saint-Georges-Saint-Émilion",
        description: "**S'ils ont le droit d'utiliser les deux appellations montagne et saint-georges-saint-émilion, certains producteurs de cette aire du Libournais sont restés fidèles à saint-georges**. Cet attachement tient au terroir&nbsp;: séparé du plateau de **Saint-Émilion** par la Barbanne, celui-ci présente une grande homogénéité avec des sols presque exclusivement argilo-calcaires, des pentes uniformes et une exposition méridionale qui garantissent un bon drainage et d'excellentes conditions de maturation. Dominant le vignoble, le château Saint-Georges est l'un des plus beaux témoignages de l'architecture du XVIII e&nbsp;siècle.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`E024B58E-38F2-4A19-99F0-8C120AF99B63`
    )

    static let `EF1CE6C2-9DAA-4F48-A2B2-3544867B7BEE` = DefaultWineAppellation(
        id: UUID(uuidString: "EF1CE6C2-9DAA-4F48-A2B2-3544867B7BEE")!,
        name: "Pauillac",
        description: "Capitale du Médoc viticole, la ville portuaire de Pauillac a donné son nom à une appellation d'une grande homogénéité de terroir. Sur la rive gauche de la Gironde, l'aire se présente comme un vaste plan incliné qui culmine à l'ouest et descend doucement vers l'estuaire. Elle est constituée d'un bel ensemble d'affleurements de graves. Avec dix-huit crus classés, dont trois premiers, la renommée de l'appellation est à la hauteur de son terroir et de son histoire héritée des anciennes seigneuries et des propriétés de parlementaires des XVII e et XVIII e&nbsp;siècles. Les pauillac allient finesse et puissance tannique, dont le corollaire est une exceptionnelle aptitude au vieillissement.",
        rawWindow: "10 à 20 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `064E8505-CEF9-4328-B20B-F00CF713BB9E` = DefaultWineAppellation(
        id: UUID(uuidString: "064E8505-CEF9-4328-B20B-F00CF713BB9E")!,
        name: "Listrac-Médoc",
        description: "À la lisière du Médoc forestier, listrac est la plus jeune des appellations communales médocaines. Située comme moulis à l'intérieur des terres, sur un plateau de graves anciennes, c'est la plus éloignée de l'estuaire. Si l'on n'y recense pas de crus classés, elle ne manque plus de porte-étendard, comme le Château Clarke. Elle compte un nombre assez important de crus bourgeois. Quant aux vins de la cave coopérative, ils ont participé à l'un des mythes de l'histoire ferroviaire, celui des Trains bleus&nbsp;: figurant sur la carte des vins de la Compagnie internationale des wagons-lits, ils ont largement contribué à notoriété de l'appellation. Le listrac a la réputation d'être puissant et vigoureux, voire un peu rude dans sa jeunesse. Cependant, bien des producteurs privilégient aujourd'hui la finesse et l'élégance.",
        rawWindow: "5 à 15 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `118D786A-D4D7-4CDC-BB9B-D4E7F466EBEF` = DefaultWineAppellation(
        id: UUID(uuidString: "118D786A-D4D7-4CDC-BB9B-D4E7F466EBEF")!,
        name: "Saint-Julien",
        description: "La commune de Saint-Julien-Beychevelle possède des terroirs exceptionnels, caractérisés par de doux vallonnements. Associés aux graves, ces versants assurent un bon écoulement des eaux pluviales. Ainsi n'est-il pas étonnant de trouver ici quelques-uns des crus les plus réputés, tels les châteaux Beychevelle, Talbot, Ducru-Beaucaillou. La position de saint-julien en fait le centre géographique du **Médoc** viticole, à mi-chemin entre Blanquefort et Jau, comme entre **Margaux** et **Saint-Estèphe**. Les saint-julien, qui présentent une remarquable aptitude au vieillissement, ont la réputation d'associer la puissance et la sève des vins des appellations communales du nord (saint-estèphe et **pauillac**) avec la finesse des margaux.",
        rawWindow: "10 à 20 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `74CBD189-7457-44EE-818E-9DB6494374C6` = DefaultWineAppellation(
        id: UUID(uuidString: "74CBD189-7457-44EE-818E-9DB6494374C6")!,
        name: "Moulis-en-Médoc",
        description: "Contrairement aux autres appellations communales du Médoc, moulis ne présente pas une forme ramassée mais s'étire en un étroit ruban de 12&nbsp;km de long sur à peine 300 ou 400&nbsp;m de large. Très importante pour l'identité de l'appellation est la forte représentation des crus bourgeois, dont Moulis est l'une des terres d'élection. Avec listrac, moulis est en effet la seule AOC communale à ne pas posséder de crus classés. Les vins savent affirmer leur personnalité, unis par leur bonne aptitude à la garde, par la complexité de leur bouquet et par leur finesse. La diversité des terroirs (graves, marnes calcaires) se retrouve dans les vins.",
        rawWindow: "5 à 15 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `F2EA9FED-BF97-46C3-8779-748882869459` = DefaultWineAppellation(
        id: UUID(uuidString: "F2EA9FED-BF97-46C3-8779-748882869459")!,
        name: "Saint-Estèphe",
        description: "À Saint-Estèphe, fière terre viticole située vers la pointe septentrionale du Haut-Médoc, les vignes recouvrent le plateau dominant la Gironde. L'appellation n'est séparée de **pauillac** que par un simple ruisseau. Trois propriétés ont marqué son histoire. La plus ancienne, fief de la maison noble de Calon, troisième cru classé en 1855, est connue aujourd'hui sous le nom de Calon-Ségur. La deuxième, Cos d'Estournel, célèbre pour ses chais à la décoration orientale, est un deuxième cru classé, à l'instar de Montrose créée en 1815. Le sol de graves légèrement plus argileuses que dans les AOC plus méridionales du Médoc confère au saint-estèphe un caractère solide dans son jeune âge et une grande aptitude à la garde.",
        rawWindow: "10 à 20 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `1431F9BC-C925-49AD-AC2E-2A4AF29DB735` = DefaultWineAppellation(
        id: UUID(uuidString: "1431F9BC-C925-49AD-AC2E-2A4AF29DB735")!,
        name: "Margaux",
        description: "**Margaux est la seule AOC communale du&nbsp;Haut-Médoc à porter le nom d'un premier grand cru classé**. Son aire s'étend sur cinq communes&nbsp;: Margaux, Cantenac, Labarde, Soussans et Arsac. L'appellation, qui sélectionne les meilleurs sols, possède quelques-unes des plus belles croupes de graves de tout le Bordelais. Celles-ci communiquent aux margaux leur grande finesse aromatique, leur harmonie et leur aptitude au vieillissement.",
        rawWindow: "10 à 20 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `5C020687-1A57-48B7-8BC9-06E4EB93BE9A` = DefaultWineAppellation(
        id: UUID(uuidString: "5C020687-1A57-48B7-8BC9-06E4EB93BE9A")!,
        name: "Haut-Médoc",
        description: "Dans le vignoble du Médoc, au sud de la Gironde, **l'AOC Haut-Médoc** couvre une aire assez vaste qui suit le cours supérieur de l'estuaire, au nord de Bordeaux. Le territoire spécifique de l’appellation **haut-médoc** serpente autour de six appellations communales, qui occupent les terroirs les plus prestigieux.&nbsp;\n\nL'AOC Haut-Médoc est la seconde en importance de la presqu’île médocaine. Les vins du Haut-médoc jouissent d’une grande réputation, due en partie à la présence de cinq crus classés dans l’aire d’appellation, les autres se trouvant dans les appellations communales.\n\nEn Médoc, le classement des vins a été réalisé en 1855, soit près d’un siècle avant celui des graves.\n\nCette antériorité s’explique par l’avance prise par la viticulture médocaine à partir du XVIIIes. ; car c’est là que s’est en grande partie produit « l’avènement de la qualité », lié à la découverte des notions de terroir et de cru, c’est-à-dire à la prise de conscience de l’existence d’une relation entre le milieu naturel et la qualité du vin.\n\n## Les vins d'appellation haut-médoc\n\n**De belles croupes de graves où prospère le cabernet-sauvignon**, des châteaux du vin nombreux et un négoce actif expliquent la qualité de ce vignoble dont cinq crus figurent dans le classement de 1855.&nbsp;\n\nLes** haut-médoc** se caractérisent par leur générosité, mais sans excès de puissance. D’une** réelle finesse au nez**, les **haut-médoc&nbsp;** présentent généralement une bonne aptitude au vieillissement et **sont donc le plus souvent des vins de garde**. Ils devront être bus chambrés et iront très bien avec les viandes blanches, les volailles ou le gibier à plume.\n\nBus plus jeunes et servis frais, ils pourront aussi accompagner certains poissons.",
        rawWindow: "5 à 15 ans (plus pour certains crus).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `6BD4CC1C-A6FB-4F20-B3F0-72985E5AEC65` = DefaultWineAppellation(
        id: UUID(uuidString: "6BD4CC1C-A6FB-4F20-B3F0-72985E5AEC65")!,
        name: "Médoc",
        description: "Longeant la rive gauche de la Garonne puis de la Gironde, **le Médoc est une région du Bordelais, que l'on associe aux grands vins rouges de Bordeaux**, même si le vignoble du Médoc ne forme qu'une bande proche de l'estuaire, forêt et marais couvrant la majeure partie de la presqu'île. Le Médoc, c'est aussi une AOC, qui peut provenir de l'ensemble du vignoble médocain; en réalité, elle est essentiellement revendiquée dans la partie nord de la presqu'île. La partie sud, en effet, est occupée par **l'AOC haut-médoc** qui enserre les six appellations communales (**margaux**, **pauillac**, **saint-julien**, **saint-estèphe**, **moulis-en-médoc**, **listrac-médoc**). Les meilleurs terroirs de l'appellation sont formés de croupes de graves correspondant à l'ancienne île, aujourd'hui enchâssée dans les palus asséchés par les Hollandais au XVII e&nbsp;siècle. Le **médoc** affirme sa personnalité par un bouquet fruité et beaucoup de rondeur, dus à un pourcentage de merlot plus important que dans les vins du haut Médoc.",
        rawWindow: "5 à 15 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`
        ],
        region: DefaultWineRegion.`19651903-D11F-454B-81C4-9E799BC252AF`
    )

    static let `D5D68FD8-D105-40E3-9A61-5E79BF87A825` = DefaultWineAppellation(
        id: UUID(uuidString: "D5D68FD8-D105-40E3-9A61-5E79BF87A825")!,
        name: "Bordeaux Rosé",
        description: "En Gironde, seule l'appellation régionale bordeaux se décline en rosé. Ainsi est-il possible de produire des bordeaux rosé et bordeaux clairet sur le territoire des cinq cent trois communes situées dans l'aire géographique du département. Rouge léger obtenu par une faible macération de raisins de cépages rouges, le clairet n'est autre que le digne descendant du French Claret, dont, déjà au Moyen Âge, les Anglais étaient friands.",
        rawWindow: "",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `ADD3A2DE-ADAB-44D5-B87C-9784EFC90FE0` = DefaultWineAppellation(
        id: UUID(uuidString: "ADD3A2DE-ADAB-44D5-B87C-9784EFC90FE0")!,
        name: "Crémant-de-Bordeaux",
        description: "AOC depuis 1990, le crémant-de-bordeaux est un vin effervescent de méthode traditionnelle, élaboré selon les règles très strictes communes à toutes les appellations de crémant. Autrefois appelée Bordeaux mousseux, cette appellation fait suite à une longue tradition d'élaboration de vins effervescents dans toute la région. Les galeries creusées dans les coteaux des rives de la Garonne présentant, avec un taux d'humidité élevé et une amplitude thermique faible, les conditions optimales à la prise de mousse et à l'élevage des vins seront utilisées à ces fins dès le XIX e&nbsp;siècle. L'aire d'appellation est délimitée par l'ensemble du vignoble bordelais. Les vins de base doivent être produits dans **l'appellation bordeaux** et les cépages sont ceux du Bordelais. Généralement blanc, à l'acidité bien fondue, le crémant-de-bordeaux peut être aussi rosé.",
        rawWindow: "1 à 2 ans.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`576A144B-D9A4-4BD2-83BE-D0E012E0B7B9`
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `BAA40743-E0A4-4DB8-8147-41827513446B` = DefaultWineAppellation(
        id: UUID(uuidString: "BAA40743-E0A4-4DB8-8147-41827513446B")!,
        name: "Bordeaux Clairet",
        description: "## Qu'est-ce que le Clairet (Bordeaux AOC) :\n\n&nbsp;\n\nEn **Gironde**, seule l'appellation régionale **bordeaux se décline en rosé**. Ainsi est-il possible de produire des** bordeaux rosé et bordeaux clairet** sur le territoire des cinq cent trois communes situées dans l'aire géographique du département. **Rouge léger obtenu par une faible macération de raisins de cépages rouges,** le clairet n'est autre que le digne descendant du** French Claret,** dont, déjà au **Moyen Âge**, **les Anglais étaient friands.**",
        rawWindow: "A boire jeunes.\n Rosé : 1 an.\n Clairet : 1 à 2 ans.\n",
        colors: [.rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `DA680855-37BD-4EE9-AA82-AD2273B16083` = DefaultWineAppellation(
        id: UUID(uuidString: "DA680855-37BD-4EE9-AA82-AD2273B16083")!,
        name: "Bordeaux Supérieur",
        description: "L'appellation régionale bordeaux supérieur s'étend sur l'intégralité du vignoble bordelais&nbsp;: elle correspond non pas à un terroir spécifique mais à une sélection parmi les bordeaux. Comme les bordeaux, les bordeaux supérieurs rouges proviennent surtout des secteurs qui ne disposent pas d'une appellation plus restreinte de même couleur, sous-régionale ou communale, comme l'Entre-deux-Mers ou la région de Saint-André-de-Cubzac. Issus comme les bordeaux d'assemblage de cépages, les bordeaux supérieurs s'en différencient par un rendement autorisé inférieur, un degré alcoolique supérieur et un élevage de neuf mois minimum. À la dégustation, ils se distinguent par leurs tanins plus puissants qui leur assurent une plus longue garde. Les bordeaux supérieurs blancs sont des vins moelleux. Alors qu'ils représentaient autrefois des volumes importants, ils sont devenus extrêmement rares.",
        rawWindow: "Rouge : 3 à 5 ans.\n Blanc moelleux : 3 à 7 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`576A144B-D9A4-4BD2-83BE-D0E012E0B7B9`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `D7058072-CDC2-457F-B461-361FD78F44E9` = DefaultWineAppellation(
        id: UUID(uuidString: "D7058072-CDC2-457F-B461-361FD78F44E9")!,
        name: "Bordeaux",
        description: "Le bordelais possède le plus vaste vignoble d'appellation du monde. Les bordeaux sont issus d'assemblages des cépages bordelais dans des proportions variables (dominante de **merlot** ou de **cabernet-sauvignon**). Ils sont en général fruités, peu corsés, idéals pour être consommés assez jeunes. Cependant depuis quelques années, des producteurs de renom proposent des vins plus structurés, élevés en fût de chêne.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`16A59F1C-AD5F-4E6B-A752-9C0DB4968C9E`,
            DefaultGrapeVariety.`576A144B-D9A4-4BD2-83BE-D0E012E0B7B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `F08F6716-AB97-459E-9207-277FCB7388C2` = DefaultWineAppellation(
        id: UUID(uuidString: "F08F6716-AB97-459E-9207-277FCB7388C2")!,
        name: "Bordeaux Blanc",
        description: "Produits dans toute l'aire d'appellation régionale bordeaux, les bordeaux blancs sont des vins secs, nerveux et fruités. Ils sont issus principalement des cépages sauvignon, sémillon et muscadelle (le premier étant parfois vinifié seul). Certains bordeaux secs, vinifiés en fût de chêne, montrent une certaine rondeur.",
        rawWindow: "2 à 5 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`0BDE7882-8E5C-4F44-A1CC-77EBF264A6A4`
    )

    static let `24E61474-EEC7-416B-A795-AF622EFA28E5` = DefaultWineAppellation(
        id: UUID(uuidString: "24E61474-EEC7-416B-A795-AF622EFA28E5")!,
        name: "Loupiac",
        description: "**Située sur la rive droite de la Garonne, comme&nbsp;Cadillac à l'ouest et&nbsp;Sainte-Croix-du-Mont à l'est, l'appellation, dédiée aux vins doux, fournit comme ses deux voisines ce que l'on appelle les «&nbsp;liquoreux de la rive droite&nbsp;», par opposition aux&nbsp;sauternes et aux&nbsp;barsac nés en face, sur l'autre rive.** Installée sur un coteau argilo-calcaire abrité des vents du nord, en pente plus douce qu'à Sainte-Croix-du-Mont, elle bénéficie du microclimat créé par la confluence des eaux fraîches du Ciron et de celles, plus chaudes, de la Garonne, qui favorise en automne le développement de la pourriture noble. Botrytisés ou passerillés, les raisins doivent toujours être vendangés à la main, par tries successives, c'est-à-dire en plusieurs passages, pour ne récolter que les vins très riches en sucres. L'appellation se démarque cependant en proposant des liquoreux de style aérien, qui privilégient la délicatesse du bouquet et la légèreté au palais.",
        rawWindow: "10 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `53EAD12E-99CA-409B-A0EB-CCB512EFF157` = DefaultWineAppellation(
        id: UUID(uuidString: "53EAD12E-99CA-409B-A0EB-CCB512EFF157")!,
        name: "Sainte-Croix-du-Mont",
        description: "Un site de coteaux abrupts dominant la Garonne, trop peu connu en dépit de son charme, et un vin ayant trop longtemps souffert (à l'égal des autres appellations de liquoreux de la rive droite, **loupiac** et **cadillac**) d'une réputation de vin de noces ou de banquets.Pourtant, cette aire d'appellation située en face de **Sauternes** mérite mieux : à de bons terroirs, en général calcaires, avec des zones graveleuses, elle ajoute un microclimat favorable au développement du botrytis. Quant aux cépages et aux méthodes de vinification, ils sont très proches de ceux du Sauternais. Les vins, autant moelleux que véritablement liquoreux, offrent une plaisante impression de fruité. On les servira comme leurs homologues de la rive gauche, mais leur prix, plus abordable, pourra inciter à les utiliser pour composer de somptueux cocktails.",
        rawWindow: "10 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `367E02E2-61FF-425B-805E-E1166F7455B9` = DefaultWineAppellation(
        id: UUID(uuidString: "367E02E2-61FF-425B-805E-E1166F7455B9")!,
        name: "Cérons",
        description: "Au nord-ouest de Barsac et située à l'intérieur de **l'AOC graves**, l'appellation cérons s'étend sur trois communes dont le sol, comme tout ce secteur de la rive gauche de la Garonne, se compose de terrasses de graves et de sables. Assez confidentiel par son volume, le cérons fait preuve d'une personnalité originale&nbsp;: il peut varier du moelleux au grand liquoreux. D'une bonne aptitude à la garde, ce vin se distingue par sa sève.",
        rawWindow: "10 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `0753B1DF-0D96-4031-912E-C4DAEEBD4C46` = DefaultWineAppellation(
        id: UUID(uuidString: "0753B1DF-0D96-4031-912E-C4DAEEBD4C46")!,
        name: "Barsac",
        description: "Sur la rive gauche du Ciron, qui la sépare de sauternes, l'appellation barsac bénéficie d'un microclimat spécifique&nbsp;: en effet, la confluence des eaux froides du Ciron et de celles plus chaudes de la Garonne engendre en automne des brouillards matinaux. Alliées à un ensoleillement fort dans l'après-midi, ces conditions sont propices au développement du Botrytis cinerea (pourriture noble) qui concentre le sucre dans le raisin et permet la production de grands liquoreux, voluptueux et racés, dont l'évolution réserve de belles surprises, notamment dans les grands millésimes. Notez que tous les vins de l'AOC barsac peuvent bénéficier de **l'appellation sauternes**. Comme cette dernière, plusieurs de ses crus ont été classés en 1855.",
        rawWindow: "20 ans (jusqu’à 100 ans pour les plus grands crus).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `A0194C0C-C0AF-4D95-9BBD-54F639F47C27` = DefaultWineAppellation(
        id: UUID(uuidString: "A0194C0C-C0AF-4D95-9BBD-54F639F47C27")!,
        name: "Cadillac",
        description: "Bastide dominée par un château du XVII e&nbsp;siècle, Cadillac est considérée comme la capitale des coteaux de Garonne, qui bordent le fleuve sur la rive droite en amont de Bordeaux. C'est une appellation étendue qui regroupe vingt-deux communes, de Baurech à Saint-Maixant, enveloppant **Loupiac** et **Sainte-Croix-du-Mont**. Sur la rive droite de la Garonne en amont de Bordeaux, les coteaux calcaires et graveleux sont particulièrement favorables aux vins blancs liquoreux.",
        rawWindow: "10 ans (plus pour certains crus et pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `3EC2AAF9-B796-4C69-88D3-EFA26C1D32DB` = DefaultWineAppellation(
        id: UUID(uuidString: "3EC2AAF9-B796-4C69-88D3-EFA26C1D32DB")!,
        name: "Sauternes",
        description: "Alors que la rive gauche de la Garonne semble beaucoup céder à la forêt, la vigne rompt le paysage de part et d'autre du Ciron. Cette petite rivière venue des Landes, toujours fraîche, se jette dans les eaux plus chaudes de la Garonne. C'est ainsi que le Sauternais s'enveloppe de brouillards matinaux en automne et que l'alchimie du *Botrytis cinerea* se réalise&nbsp;: les raisins se couvrent d'une pourriture noble qui concentre leurs sucres et leurs arômes. Les vignerons envahissent alors les règes pour vendanger, grain par grain, les baies botrytisées. Sauternes, Bommes, Fargues, Preignac et Barsac produisent le plus célèbre vin liquoreux du monde. Privilégiée par son climat, l'aire d'appellation l'est aussi par ses croupes graveleuses sur lesquelles sont implantés les plus grands crus classés en 1855. Le château d'Yquem a joué un rôle essentiel dans le développement du vignoble sauternais. En 1784, Thomas Jefferson, alors ambassadeur en France, plaçait ce cru au-dessus de tous les vins de la région.",
        rawWindow: "20 ans et plus (jusqu’à 100 ans pour les plus grands crus).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`170C21E6-99AE-465E-8EDF-86FC7DD423B4`
    )

    static let `C712FAEF-CDC8-4C7A-9BC8-CA4C535B0D58` = DefaultWineAppellation(
        id: UUID(uuidString: "C712FAEF-CDC8-4C7A-9BC8-CA4C535B0D58")!,
        name: "Bouzeron",
        description: "Situé entre les villages de Chagny et de Rully, au nord de la Saône-et-Loire, l'aire géographique de Bouzeron ne peut être plantée qu'en aligoté. Le vignoble suit une vallée orientée nord-sud. Le climat est continental avec des hivers assez froids et des étés souvent chauds. L'aligoté se plaît sur ce terrain calcaire du bathonien et donne un vin blanc sec, aigu comme le silex, fruité, charmeur à l'apéritif?; certains climats sont justement appréciés, comme Les Clous. C'est la seule appellation communale à autoriser ce cépage.",
        rawWindow: "3 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `EB1FC59C-EE4A-42DF-8546-6A5764772B24` = DefaultWineAppellation(
        id: UUID(uuidString: "EB1FC59C-EE4A-42DF-8546-6A5764772B24")!,
        name: "Givry",
        description: "**Le bourg de Givry a donné son nom à l'une des cinq appellations de la Côte chalonnaise**, qui prolonge en Saône-et-Loire l'axe de la célèbre Côte d'Or. Ce sont les moines de Cluny, puis les Cisterciens qui ont développé la viticulture sur cette ligne de collines bordant la façade orientale du nord du Massif central. **Le givry est surtout un vin rouge, issu du pinot noir**.",
        rawWindow: "Rouge : 5 à 8 ans.\nBlanc : 3 à 6 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `58209642-CCA0-41D4-91C7-374627381FF4` = DefaultWineAppellation(
        id: UUID(uuidString: "58209642-CCA0-41D4-91C7-374627381FF4")!,
        name: "Rully",
        description: "Sur la commune voisine de Chagny, entre **bouzeron** au nord et **mercurey** au sud, l'AOC rully est implantée à parts égales en **chardonnay** et en **pinot noir**. Ouvert sur la plaine de la Saône, et sans nul doute le meilleur, le versant se situe entre 230 et 300&nbsp;m d'altitude environ. Le pinot noir donne naissance à des vins pleins, francs et charnus. Vingt-trois premiers crus ont été définis, parmi lesquels se distinguent Clos Saint-Jacques, Grésigny, Chapitre et les Cloux. Ils bénéficient d'une altitude favorable, entre 240 et 300&nbsp;m, exposés est et sud-est. Le haut du coteau produisait historiquement des vins blancs; les climats situés plus bas, des vins rouges.",
        rawWindow: "Blanc : 3 ans.\nRouge : 4 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `A47A39F9-EB7A-460D-B8A7-B3B1C1C8AF55` = DefaultWineAppellation(
        id: UUID(uuidString: "A47A39F9-EB7A-460D-B8A7-B3B1C1C8AF55")!,
        name: "Montagny",
        description: "À l'extrême sud de la Côte chalonnaise, les vignes de Buxy, Montagny-lès-Buxy, Jully-lès-Buxy et Saint-Vallerin sont exposées à l'est et au sud-est sur des coteaux dont l'altitude varie entre 250 et 400&nbsp;m. Les sols sont ici très différents de ceux des autres appellations communales de la Côte chalonnaise. Le montagny est un vin blanc sec au bouquet délicat.",
        rawWindow: "3 à 6 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `ADE37753-34C3-42B8-B9B2-2DE6900546F2` = DefaultWineAppellation(
        id: UUID(uuidString: "ADE37753-34C3-42B8-B9B2-2DE6900546F2")!,
        name: "Mercurey",
        description: "À une douzaine de kilomètres au sud de Chagny, mercurey est adossé aux coteaux. Les meilleures vignes se situent autour de 260&nbsp;m d'altitude. **Mercurey est l'appellation communale la plus étendue de la Côte chalonnaise**; elle se répartit sur trois communes – Mercurey, Saint-Martin-sous-Montaigu et Bourgneuf-Val-d'Or&nbsp;: la production est surtout rouge. Le sous-sol composé de marnes profondes engendre les vins les plus charpentés (Les Crêts, Le Clos du Roy, Clos Barrault). Sur des sols caillouteux, nés de roches décomposées, les vins se font plus souples et plus fins (Sazenay, Les Champs Martin, Les Croichots). Entre ces deux types, une large palette de nuances existe. **Les marnes blanches fournissent un chardonnay riche et gras** (Les Velley).",
        rawWindow: "3 à 6 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `51ABFF65-6DF2-47B8-B088-F137C4EBD64C` = DefaultWineAppellation(
        id: UUID(uuidString: "51ABFF65-6DF2-47B8-B088-F137C4EBD64C")!,
        name: "Bourgogne-Côte-Chalonnaise",
        description: "Cette appellation s'étend sur quarante-quatre communes au nord de la Saône-et-Loire&nbsp;: une quarantaine de kilomètres de longueur, 5 à 8&nbsp;kilomètres de largeur, de Chagny à Saint-Gengoux-le-National. L'aire du bourgogne Côte-chalonnaise présente une réelle identité, nuancée par les terroirs, où l'on distingue un secteur nord et un secteur sud. Cette région favorable au pinot noir est un bon pays de vin rouge. Il ne faut pourtant pas oublier les vins blancs qui sont souvent très équilibrés.",
        rawWindow: "Rouge : 3 à 6 ans.\n Blanc : 2 à 4 ans Rosé : à boire jeune.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`1D9184E4-CCCF-4560-87A8-508E2EB862A7`
    )

    static let `4F9D1A34-ECB5-4441-BDF4-FA4A4693E554` = DefaultWineAppellation(
        id: UUID(uuidString: "4F9D1A34-ECB5-4441-BDF4-FA4A4693E554")!,
        name: "Aloxe-Corton",
        description: "À la charnière des **Côtes de Nuits&nbsp;et de Beaune**, la Montagne de Corton forme un amphithéâtre au sein duquel s'inscrivent trois villages&nbsp;: Aloxe-Corton, Ladoix-Serrigny et Pernand-Vergelesses, dont les appellations s'interpénètrent. Sur les pentes de la Montagne, les grands crus et les premiers crus rouges sont implantés sur des sols marneux et calcaires, tandis que dans la partie basse, l'AOC communale repose sur des sols semés de chailles.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `768ED7C1-F3C1-46B7-A609-74556267338E` = DefaultWineAppellation(
        id: UUID(uuidString: "768ED7C1-F3C1-46B7-A609-74556267338E")!,
        name: "Côte-de-Beaune",
        description: "Cette appellation sous-régionale concerne exclusivement quelques lieux-dits de la Montagne de Beaune, à l'exception des premiers crus. Elle produit soit des vins blancs (**chardonnay**), soit des vins rouges (**pinot noir**). Le nom du climat peut accompagner celui de côte-de-beaune sur l'étiquette.",
        rawWindow: "3 à 5 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `41F18524-E65D-47D4-AA55-0C7D15CD39A0` = DefaultWineAppellation(
        id: UUID(uuidString: "41F18524-E65D-47D4-AA55-0C7D15CD39A0")!,
        name: "Beaune",
        description: "Beaune, son hôtel-Dieu et sa «&nbsp;Montagne&nbsp;» sont l'image même de la Bourgogne, la capitale de son vin. L'appellation produit pour l'essentiel des vins rouges nés du **pinot noir** dans une aire à l'identité géologique très forte –&nbsp;calcaires et marnes. L'exposition varie de l'est au sud-est en passant par le plein sud. Si le vin de Beaune était réputé autrefois pour sa nuance claire, œil-de-perdrix, sa jeunesse de tempérament, il est aujourd'hui généreux et corsé, de garde, plein de corps et d'esprit. Les premiers crus sont assez légers dans les Grèves, plus charnus dans le Clos des Mouches.",
        rawWindow: "Rouge : 5 à 10 ans (jusqu’à 20 ans pour les grands millésimes).\nBlanc : 3 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `FBE79421-C04E-426C-A7CC-1D0DDD467542` = DefaultWineAppellation(
        id: UUID(uuidString: "FBE79421-C04E-426C-A7CC-1D0DDD467542")!,
        name: "Corton-Charlemagne",
        description: "Le vignoble de corton-charlemagne occupe le haut de la Montagne de Corton, au nord de **Beaune**. Entre 280 et 330&nbsp;m d'altitude, c'est le plus élevé des grands crus de Bourgogne. Son magnifique vin blanc est produit sur les climats Le Charlemagne (**Aloxe-Corton**), En Charlemagne (**Pernand-Vergelesses**) et sur des climats fédérés sous cette bannière en tout ou partie (Les Pougets, Le Corton, Les Languettes). Mais la règle est de ne jamais indiquer sur l'étiquette son climat d'origine. Il ne faut pas boire trop jeune le corton-charlemagne. C'est un vin de garde. Il atteint ses meilleures qualités au bout d'une dizaine d'années et peut, en général, se conserver de vingt à vingt-cinq ans.",
        rawWindow: "10 à 30 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `4493521E-3ECD-4668-A90A-27105087214F` = DefaultWineAppellation(
        id: UUID(uuidString: "4493521E-3ECD-4668-A90A-27105087214F")!,
        name: "Corton",
        description: "À l'endroit où **la Côte de Nuits** laisse place à la **Côte de Beaune**, les villages d'**Aloxe-Corton**, Ladoix-Serrigny et **Pernand-Vergelesses** ont en commun ce grand cru situé au pied de la Montagne de Corton. Le corton est surtout connu comme un vin rouge issu du **pinot noir**, ample, puissant et généreux. Il existe cependant un corton blanc issu du **chardonnay**. La vaste superficie de l'appellation et le grand nombre de climats (lieux-dits) expliquent les nuances constatées dans le caractère de ses vins.",
        rawWindow: "Rouge : 8 à 15 ans.\nBlanc : 4 à 12 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `0639E44B-F7B9-43AA-B99A-8A4EB6F14DBF` = DefaultWineAppellation(
        id: UUID(uuidString: "0639E44B-F7B9-43AA-B99A-8A4EB6F14DBF")!,
        name: "Savigny-Lès-Beaune",
        description: "Juste au nord de Beaune, le village de Savigny-lès-Beaune se glisse au creux de la vallée d'une petite rivière, le Rhoin. Son vignoble a appartenu au domaine des ducs de Bourgogne, aux abbayes et aux chevaliers de Malte. Il se divise en deux parties assez distinctes. L'une est proche de **Pernand-Vergelesses**, exposée plein sud; l'autre se situe sous le mont Battois, du côté beaunois. Les terrains sont assez sableux, et les vignes regardent l'est et le nord-est. Le savigny-lès-beaune est pour l'essentiel un vin rouge, mais la production de vins blancs progresse.",
        rawWindow: "Rouge : 5 à 15 ans.\nBlanc : 4 à 12 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `B1C2B2F7-ECDA-4EA1-A9BE-5163FE958FFD` = DefaultWineAppellation(
        id: UUID(uuidString: "B1C2B2F7-ECDA-4EA1-A9BE-5163FE958FFD")!,
        name: "Pommard",
        description: "**Entre&nbsp;beaune et volnay, pommard marque l'endroit où&nbsp;la Côte de Beaune bifurque et s'oriente davantage au sud-est**. Le terroir du pommard est limité à cette commune et son vignoble est implanté à flanc de coteau, à 280&nbsp;m d'altitude. Mis en valeur dès le Moyen Âge, il produit exclusivement des vins rouges solides et tanniques, issus du **pinot noir**. Il n'y a pas ici de grands crus, mais vingt-huit premiers crus qui occupent le milieu du coteau et reposent sur des sols argilo-calcaires. La terre grasse explique la fermeté et l'excellence de ces vins. Certains crus ont acquis une importante notoriété, tels les Rugiens, les Pézerolles et les Épenots.",
        rawWindow: "5 à 10 ans",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `28073CED-9379-4F6B-A698-CD74AE7E3226` = DefaultWineAppellation(
        id: UUID(uuidString: "28073CED-9379-4F6B-A698-CD74AE7E3226")!,
        name: "Pernand-Vergelesses",
        description: "Au confluent de deux combes, Pernand-Vergelesses est bâti à flanc de coteau en retrait de la Côte de Beaune. Son vignoble se situe sur la Montagne de Corton, dont le versant sud-ouest porte les grands crus. À la base du coteau, les vignes sont implantées sur des terres argilo-calcaires mêlées à des cailloux. Le village de Pernand a épousé en 1922 le nom de son climat le plus célèbre pour devenir Pernand-Vergelesses. L'AOC communale produit d'excellents vins blancs et rouges.",
        rawWindow: "Rouge : 5 à 10 ans.\n Blanc : 3 à 8 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `5B7B3D6C-B9B1-409E-9CE5-D1CDA1717133` = DefaultWineAppellation(
        id: UUID(uuidString: "5B7B3D6C-B9B1-409E-9CE5-D1CDA1717133")!,
        name: "Ladoix",
        description: "En quittant la Côte de Nuits vers le sud, la Montagne de Corton forme un belvédère. Sur le territoire de Ladoix-Serrigny, les vignes se partagent entre le ladoix et le ladoix premier cru. Le vignoble implanté sur le haut du coteau fournit de grands vins blancs sur des sols assez marneux et argileux. À mi-coteau, le sol calcaire, caillouteux, donne naissance à des vins rouges puissants et corsés. Plus bas, le sol brun ou rougeâtre mêle calcaire et argile, chaillots ou résidus de calcaires à silex pour produire des vins rouges tendres et fruités.",
        rawWindow: "Rouge : 5 à 8 ans.\n Blanc : 3 à 5 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `725D29A6-6682-480F-B970-54D0D9517772` = DefaultWineAppellation(
        id: UUID(uuidString: "725D29A6-6682-480F-B970-54D0D9517772")!,
        name: "Chorey-Lès-Beaune",
        description: "Proche de **Savigny-lès-Beaune** et d'**Aloxe-Corton**, Chorey-lès-Beaune est implanté en plaine. Ses vignes s'étendent en direction de la Côte, occupant en grande partie un sol d'alluvions. Les vins provenant de cette aire communale sont vendus sous l'appellation chorey, ou chorey-lès-beaune, ou encore chorey-côte-de-beaune (en rouge). Tendres et friands, ils offrent une excellente clé d'initiation au bourgogne rouge.",
        rawWindow: "Rouge : 3 à 10 ans.\nBlanc : 3 à 8 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `2C49BD68-8943-4B14-AFD8-1A1828A5AEB9` = DefaultWineAppellation(
        id: UUID(uuidString: "2C49BD68-8943-4B14-AFD8-1A1828A5AEB9")!,
        name: "Volnay",
        description: "Entre **Pommard** au nord et **Meursault** au sud, Volnay est situé à 275&nbsp;m d'altitude&nbsp;: ce village étroit et pentu occupe une position assez élevée dans la Côte. Adossé à la petite montagne du Chaignot, le vignoble est implanté sur des sols calcaires exposés au sud-est. Le volnay passe pour un vin féminin, suave et subtil&nbsp;: le vin rouge le plus fin de **la Côte de Beaune**. Il est assez précoce.",
        rawWindow: "3 à 8 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `CF97A5A8-2261-48B7-B0E9-759EABF8D737` = DefaultWineAppellation(
        id: UUID(uuidString: "CF97A5A8-2261-48B7-B0E9-759EABF8D737")!,
        name: "Monthélie",
        description: "Le village de Monthélie occupe une situation de balcon entre les premiers reliefs de la Côte de Beaune et les Hautes-Côtes. Sur la centaine d'hectares plantés en appellation communale, 31&nbsp;ha sont classés en premiers crus. Orientés sud et sud-est, reposant sur du calcaire recouvert de bonnes terres rouges et de marnes, les meilleurs climats occupent le coteau proche de Volnay.",
        rawWindow: "Rouge : 5 à 10 ans.\n Blanc : 3 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `F6DF2246-58B9-4B37-AA04-5FF407DECBB7` = DefaultWineAppellation(
        id: UUID(uuidString: "F6DF2246-58B9-4B37-AA04-5FF407DECBB7")!,
        name: "Auxey-Duresses",
        description: "Au seuil d'une vallée qui s'enfonce dans les Hautes-Côtes à l'ouest de Meursault, le village d'Auxey était une dépendance de l'abbaye de Cluny au Moyen Âge ; ce village a accolé, en 1924, son nom, Auxey, à celui du climat Les Duresses. Dans le prolongement de Volnay, la montagne du Bourdon offre à la vigne une orientation sud-est&nbsp;: c'est le terroir du pinot noir. Le sol très fin du mont Mélian, de l'autre côté de la route, est quant à lui propice au chardonnay. Les vins premiers crus ont chacun un caractère propre&nbsp;: Les Duresses sont très fruités, le Clos du Val et le Climat du Val puissants.",
        rawWindow: "Rouge : 5 à 10 ans.\n Blanc : 3 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `C8FDD695-C630-4502-ACAE-D2D6D7E774B3` = DefaultWineAppellation(
        id: UUID(uuidString: "C8FDD695-C630-4502-ACAE-D2D6D7E774B3")!,
        name: "Bienvenues-Bâtard-Montrachet",
        description: "Au sud de la **Côte de Beaune**, ce grand cru longe la route au nord de **bâtard-montrachet** sur la commune de **Puligny-Montrachet**. Le vignoble est implanté en bas de pente sur des sols composés d'éboulis riches en argiles et limons ainsi qu'en chailles. Il produit des vins aux multiples arômes, qu'il faut savoir attendre cinq ans au moins.",
        rawWindow: "7 à 15 ans (jusqu’à 30 ans pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `9E091CC8-9F0F-45BA-8AED-9B2E184CF6FB` = DefaultWineAppellation(
        id: UUID(uuidString: "9E091CC8-9F0F-45BA-8AED-9B2E184CF6FB")!,
        name: "Blagny",
        description: "Le vignoble de **Blagny** s'étend sur la **Côte de Beaune**, à cheval entre les communes de **Meursault** et de **Puligny-Montrachet.** Ce hameau produit des **vins rouges et blancs** qui portent des **appellations différentes** en fonction de leur couleur. Les vins blancs bénéficient de **l'AOC communale Puligny-Montrachet et de l'AOC communale Meursault**, avec des **premiers crus.** Les vins rouges, quant à eux, sont reconnaissables sous l'appellation **Blagny et Blagny premier cru**. Cette diversité de terroirs confère aux vins de **Blagny** une **personnalité unique**, reflétant les** caractéristiques spécifiques** de chaque commune.",
        rawWindow: "4 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `39934B97-8B74-4CE8-8063-8246950FFB87` = DefaultWineAppellation(
        id: UUID(uuidString: "39934B97-8B74-4CE8-8063-8246950FFB87")!,
        name: "Criots-Bâtard-Montrachet",
        description: "Au sud de **la Côte de Beaune**, ce grand cru de Bourgogne occupe le versant sud-est d'un coteau joignant le **bâtard-montrachet**, à 240&nbsp;m d'altitude. Il offre des vins plus secs que bienvenues et de longue garde. L'idée d'une appellation criots-bâtard-montrachet est née en 1939, en même temps que la délimitation du **bienvenues-bâtard-montrachet**. Il s'agissait alors d'apaiser les nombreuses revendications autour du bâtard-montrachet dont l'aire n'était pas clairement définie. Le criots est situé sur Chassagne, tandis que le bienvenues repose sur Puligny.",
        rawWindow: "10 à 15 ans (jusqu’à 30 ans pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `5171EFE1-8105-4049-9462-5314799F3FCA` = DefaultWineAppellation(
        id: UUID(uuidString: "5171EFE1-8105-4049-9462-5314799F3FCA")!,
        name: "Saint-Romain",
        description: "À cet endroit de **la Côte de Beaune**, à l'ouest de **meursault**, le paysage se creuse et s'évase en larges perspectives jusqu'à **auxey-duresses**. La falaise ménage l'un des plus beaux points de vue de la région depuis ses 450&nbsp;m d'altitude. Abritées par la roche, les vignes occupent les versants assez encaissés d'un passage taillé dans la Côte. Elles sont exposées sud–sud-est et nord-nord-est. Dans un ensemble marno-calcaire, des bancs argileux conviennent parfaitement à la production de vins blancs.",
        rawWindow: "Blanc : 5 à 10 ans.\nRouge : 6 à 12 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `96644946-DB56-482F-8F54-E20E5770A781` = DefaultWineAppellation(
        id: UUID(uuidString: "96644946-DB56-482F-8F54-E20E5770A781")!,
        name: "Chassagne-Montrachet",
        description: "Au sud de la Côte de Beaune, Chassagne-Montrachet offre à la vigne un coteau exposé est-sud-est entre Puligny, Montrachet et Santenay. Cette appellation réussit la synthèse des deux grands cépages bourguignons et s'offre le luxe de les planter parfois rang contre rang. Clos Saint-Jean, Champs Gain, Boudriotte, Morgeot figurent parmi les premiers crus les plus renommés. Vide-Bourse&nbsp;? Voisin du bâtard-montrachet.",
        rawWindow: "Blanc : 3 à 12 ans.\n Rouge : 5 à 15 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `ABC2AED0-3F04-45A0-9176-8A780C9C182E` = DefaultWineAppellation(
        id: UUID(uuidString: "ABC2AED0-3F04-45A0-9176-8A780C9C182E")!,
        name: "Chevalier-Montrachet",
        description: "Au sud de la **Côte de Beaune**, chevalier-montrachet porte ce nom depuis le XVIII e&nbsp;siècle. Il est plus élevé que le montrachet sur le coteau, implanté entre 265 et 290&nbsp;m d'altitude. Il se situe sur **Puligny-Montrachet**. Le **chardonnay** bénéficie ici d'une exposition au levant et au midi. En pente régulière assez forte, il dispose de sols peu profonds. Ce vin de garde possède une ossature solide et une admirable finesse aromatique.",
        rawWindow: "7 à 15 ans (jusqu’à 30 ans pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `E02BD93A-5705-426A-84FB-DF361144BF92` = DefaultWineAppellation(
        id: UUID(uuidString: "E02BD93A-5705-426A-84FB-DF361144BF92")!,
        name: "Puligny-Montrachet",
        description: "**Situé entre&nbsp;meursault au nord et&nbsp;chassagne-montrachet au sud, Puligny est devenu Puligny-Montrachet en 1879**. Le terroir conjugue ces deux influences. L'appellation communale produit des vins gras et charnus du côté de meursault, charpentés et bouquetés du côté de chassagne. Les villages se situent à la hauteur de Puligny et un peu plus haut dans l'axe de la Côte. Les premiers crus s'étagent sur le même axe, également plein sud entre 270 et 320&nbsp;m d'altitude. Ils se répartissent en vingt-quatre lieux-dits, eux-mêmes assemblés en quatorze climats. Parmi les plus réputés&nbsp;: Les Combettes, Les Folatières, Les Pucelles, Clavaillon.",
        rawWindow: "Blanc : 5 à 15 ans.\nRouge : 4 à 12 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `2A09C4B0-FC9D-48CC-AD35-AE5505822721` = DefaultWineAppellation(
        id: UUID(uuidString: "2A09C4B0-FC9D-48CC-AD35-AE5505822721")!,
        name: "Montrachet",
        description: "Apparu au Moyen Âge, le montrachet (de mont «&nbsp;rache&nbsp;», c'est-à-dire chauve, ou plus exactement recouvert à son sommet de landes maigres) a pris son essor au XVII e&nbsp;siècle. **Ce cru sublime, classé au premier rang mondial des vins blancs secs, est issu d'un sol léger, riche en calcaire actif et en sodium**. Le vignoble est exposé au sud-sud-est sur le léger versant d'une colline, au sud de la Côte de Beaune, regardant Chagny et la Côte chalonnaise. **Il se répartit sur&nbsp;Puligny-Montrachet et sur Chassagne-Montrachet**. Longtemps surnommé «&nbsp;l'aîné&nbsp;», ou «&nbsp;le vrai&nbsp;», **cet empereur des vins blancs de Bourgogne est entouré de quatre grands crus tous terminés du nom «montrachet»**: **bâtard**, **chevalier**, **bienvenue-bâtard** et **criots-bâtard**.",
        rawWindow: "10 à 15 ans (jusqu’à 30 ans pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `36BA2FA1-DEBA-410F-9110-DAE8226EBD1E` = DefaultWineAppellation(
        id: UUID(uuidString: "36BA2FA1-DEBA-410F-9110-DAE8226EBD1E")!,
        name: "Meursault",
        description: "La commune de **Meursault**&nbsp;**est bordée du nord au sud, en passant par l'ouest, par volnay, monthélie,&nbsp;auxey-duresses et puligny-montrachet,**&nbsp;et marque une sorte de frontière : avec Meursault commence la **véritable production de grands vins blancs**.&nbsp;&nbsp;\n\nSes meilleurs terroirs, surtout des marnes, se situent à mi-pente, selon une exposition qui oblique du levant au midi.&nbsp;Certains de ses 1ers crus sont mondialement réputés : Les Perrières, Les Charmes, Les Poruzots, Les Genevrières, Les Gouttes d'Or,... Ils allient la subtilité à la force, la fougère à l'amande grillée, l'aptitude à être consommés jeunes au potentiel de garde.\n\nSi** Meursault est bien la &#34capitale des vins blancs de Bourgogne&#34,** qui magnifient le **chardonnay**, elle n'en fournit pas moins quelques vins rouges, issus des terroirs voisins de Volnay, au nord. Ses &#34petits&#34châteaus&#34 attestent une opulence ancienne.\n\nLa Paulée, qui a pour origine le nom du repas pris en commun à la fin des vendanges, est devenue une manifestation qui clôt en novembre les &#34Trois Glorieuses&#34, journées au cours desquelles se déroule la vente des Hospices de Beaune.",
        rawWindow: "Blanc : 8 à 15 ans.\nRouge : 5 à 10 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `186037F5-F69C-4AFC-B439-DBCDD2B8258D` = DefaultWineAppellation(
        id: UUID(uuidString: "186037F5-F69C-4AFC-B439-DBCDD2B8258D")!,
        name: "Bâtard-Montrachet",
        description: "Sur les communes de Puligny et de Chassagne, dans le sud de la **Côte de Beaune**, ce grand cru est implanté le long de la route, sur un terrain en faible pente. Aucun domaine ne dépasse ici un hectare. La plupart ne couvrent pas plus de 15&nbsp;ares. Les sols bruns calcaires à forte teneur en argile sont composés d'alluvions anciennes. Le vignoble produit des vins au parfum pénétrant, qui ont une étonnante longévité. Ils possèdent du corps et de la puissance.",
        rawWindow: "10 à 15 ans (jusqu’à 30 ans pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `79D51103-5F66-42B2-8136-B4C19A8F664F` = DefaultWineAppellation(
        id: UUID(uuidString: "79D51103-5F66-42B2-8136-B4C19A8F664F")!,
        name: "Saint-Aubin",
        description: "En retrait de la Côte, dans l'entourage immédiat du montrachet, Saint-Aubin est un tout petit village dont le vignoble couvre des croupes aux pentes assez raides, notamment en bordure de **Puligny-Montrachet**. Le terroir formé de terres blanches argileuses est soumis à un climat sec et assez froid du fait de sa position élevée. Dans ces conditions, les vins dévoilent un caractère charnu et opulent.",
        rawWindow: "Blanc : 6 à 10 ans (jusqu’à 15 ans pour les grands millésimes).\nRouge : 4 à 6 ans (jusqu’à 10 ou 15 ans pour les grands millésimes).\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `48CDB679-E382-4AA0-AE21-4A5EA7CC2C7E` = DefaultWineAppellation(
        id: UUID(uuidString: "48CDB679-E382-4AA0-AE21-4A5EA7CC2C7E")!,
        name: "Maranges",
        description: "**Entre&nbsp;la Côte de Beaune et la Côte chalonnaise**, l'appellation maranges regroupe Cheilly-lès-Maranges, Dezize-lès-Maranges et Sampigny-lès-Maranges.** Le vin de l'appellation s'apparente au&nbsp;santenay tout proche**. Toutefois, des différences apparaissent entre les terroirs&nbsp;: les sols légers, graveleux de Cheilly donnent un vin à la délicatesse remarquable. Structure et fermeté caractérisent les vins de Dezize et de Sampigny. Il existe aussi une petite production de vins blancs, au tempérament fleuri.",
        rawWindow: "Rouge : 2 à 5 ans.\nBlanc : 5 à 6 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `6FB70A44-AC0D-4379-938D-E9EC4DBAF3BC` = DefaultWineAppellation(
        id: UUID(uuidString: "6FB70A44-AC0D-4379-938D-E9EC4DBAF3BC")!,
        name: "Côte-de-Beaune-Villages",
        description: "Cette appellation côte-de-beaune-villages porte uniquement sur les vins rouges produits dans quatorze&nbsp;AOC de la Côte de Beaune, situées entre Ladoix-Serrigny et les Maranges, à l'exception des premiers crus. Il s'agit d'une variante des appellations communales. Le même vin peut être commercialisé soit sous le nom de l'appellation communale, soit sous ce même nom suivi de «&nbsp;côte-de-beaune&nbsp;», soit sous l'appellation côte-de-beaune-villages (par exemple&nbsp;: **auxey-duresses**, auxey-duresses-côte-de-beaune ou côte-de-beaune-villages). Les appellations beaune, aloxe-corton, pommard et volnay ne sont pas concernées par cette réglementation. Les vins, qui peuvent être issus d'assemblages des différentes communes, sont en général souples et légers au nord de l'AOC, plus fermes et plus colorés au sud.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `69A7AD78-EF7A-440B-B914-CA0C93CE8FFC` = DefaultWineAppellation(
        id: UUID(uuidString: "69A7AD78-EF7A-440B-B914-CA0C93CE8FFC")!,
        name: "Santenay",
        description: "Tout au sud de **la Côte de Beaune**, à la limite de la Côte-d'Or et de la Saône-et-Loire, Santenay partagea longtemps ses ambitions entre le vin et les eaux thermales. Aujourd'hui, le village se consacre pleinement à Bacchus, oubliant qu'il s'appelait naguère Santenay-les-Bains. Seuls les hasards des limites départementales, fixées lors de la Révolution, ont séparé Santenay des Maranges. Le vignoble, traversé par une douce rivière, la Dheune, produit des vins rouges de garde, qui ont «&nbsp;l'âme du volnay et le corps du pommard&nbsp;».",
        rawWindow: "5 à 10 ans (jusqu’à 25 ans pour les grands millésimes).\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`043469E7-2A76-4D34-A8CA-A6E9CB75F619`
    )

    static let `D6333044-50B3-44DC-9395-065E148FC5FA` = DefaultWineAppellation(
        id: UUID(uuidString: "D6333044-50B3-44DC-9395-065E148FC5FA")!,
        name: "Grande-Rue (la)",
        description: "**Cette étroite bande de terre à Vosne-Romanée, située entre&nbsp;romanée et&nbsp;romanée-conti au nord, la tâche au sud, est l'un des fleurons du vignoble de la Côte d'Or et le plus récent des grands crus de Vosne**. Le lieu-dit est mentionné dès 1450. Il constitue un monopole, propriété du domaine Lamarche. Ses vins sont pleins de mâche, élégants, longs en bouche; ils gagnent à être décantés, et l'âge les embellit. Il faut donc savoir les attendre.",
        rawWindow: "10 à 20 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `0B115EA8-0119-4D4A-A88F-4BCD0D76D864` = DefaultWineAppellation(
        id: UUID(uuidString: "0B115EA8-0119-4D4A-A88F-4BCD0D76D864")!,
        name: "Chambertin",
        description: "Entré dans l'histoire au XIII e&nbsp;siècle, le chambertin est considéré dès le XVII e&nbsp;siècle comme l'un des tout premiers vins rouges d'Europe et fait alors figure de roi des vins. Propriété des chanoines de Langres, son terroir suit jusqu'à la Révolution un chemin identique à celui du clos-de-bèze voisin. Aujourd'hui, c'est l'un des neuf grands crus de la commune de **Gevrey-Chambertin**, qui est le premier bourg viticole rencontré sur la Route des grands crus en direction de Beaune. Le vignoble occupe la meilleure partie du coteau jusqu'à 300&nbsp;m d'altitude. Il donne un vin puissant, structuré, d'une grande capacité de garde.",
        rawWindow: "10 à 20 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `8CFB9048-C4C8-4169-93D4-F16000C0A1B7` = DefaultWineAppellation(
        id: UUID(uuidString: "8CFB9048-C4C8-4169-93D4-F16000C0A1B7")!,
        name: "Griotte-Chambertin",
        description: "**Ce cru minuscule du nord de la Côte d'Or est grand par le renom**&nbsp;: **il partage avec sept autres climats (lieux-dits) de&nbsp;Gevrey-Chambertin le privilège d'accoler à son nom celui d'un des plus grands vins de Bourgogne**. Situé dans un terrain en cuvette à l'est de la route des Grands Crus et du chambertin, il bénéficie comme lui d'une exposition vers le levant. Son nom ne doit rien à la cerise aigre, mais viendrait du mot «&nbsp;crais&nbsp;» qui désigne des terrains caillouteux. Ces sols produisent un vin bien soutenu par les tanins, tout en étant réputé pour sa finesse.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `E0DC5C99-C18A-4AE7-8FD4-5879B396B53F` = DefaultWineAppellation(
        id: UUID(uuidString: "E0DC5C99-C18A-4AE7-8FD4-5879B396B53F")!,
        name: "Gevrey-Chambertin",
        description: "À une douzaine de kilomètres au sud de Dijon, au pied de la combe de Lavaux, Gevrey-Chambertin est l'un des premiers bourgs vignerons de la Côte; il possède toute la hiérarchie des appellations bourguignonnes. **Les coteaux portent au sud de la combe les sept grands crus, auxquels on accole le nom de Chambertin** – **ruchottes**, **mazis**, **clos de Bèze**, **chapelle**, **latricières**, **charmes** et **chambertin** –, au nord, les premiers crus sur des terrains graveleux, tandis que l'appellation gevrey-chambertin se concentre sur le piémont. D'un sol brun-rouge peu profond, caillouteux et calcaire,** le pinot noir tire ici des accents sublimes et produit des vins concentrés**.",
        rawWindow: "3 à 15 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `8F4A4181-8B25-48B1-885A-A459B97C3994` = DefaultWineAppellation(
        id: UUID(uuidString: "8F4A4181-8B25-48B1-885A-A459B97C3994")!,
        name: "Latricières-Chambertin",
        description: "**Au sud de l'aire du gevrey-chambertin, vers Morey-Saint-Denis, les latricières-chambertin sont implantées sur un sous-sol dur, à la terre rare**. Le nom de Latricières est apparu en 1508&nbsp;: il désigne un terrain maigre, peu fertile. Seule la vigne y fait merveille. Le vin semble proche du chambertin par sa richesse aromatique, sa pureté de fruit, sa finesse. Tout juste peut-on l'en différencier par une moindre puissance.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `F9E85263-CF1F-4039-968F-05261839AE64` = DefaultWineAppellation(
        id: UUID(uuidString: "F9E85263-CF1F-4039-968F-05261839AE64")!,
        name: "Chapelle-Chambertin",
        description: "À l'est de la Route des grands crus, la Chapelle-Chambertin doit son nom à la chapelle de Notre-Dame de Bèze, bâtie en 1155 mais démolie vers 1830. Elle se répartit entre une douzaine de propriétaires et une vingtaine de parcelles. Ce terroir fait de roche fragmentée et de minuscules cailloux bénéfice d'un microclimat favorable et d'un terrain en cuvette. Le chapelle-chambertin rappelle le bouquet du clos-de-bèze. Il y manque parfois l'éclat final, mais quelle délicatesse dans l'émotion.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `7CFB17AC-DD29-4B10-9686-A47C867E3BB0` = DefaultWineAppellation(
        id: UUID(uuidString: "7CFB17AC-DD29-4B10-9686-A47C867E3BB0")!,
        name: "Charmes-Chambertin",
        description: "Ce grand cru de Gevrey-Chambertin, dont le nom vient de «&nbsp;chaume&nbsp;», parcelle à l'abandon, descend en partie jusqu'à la route nationale. Il est contigu de celui de **mazoyères-chambertin**, avec lequel il est souvent confondu sous le seul nom de charmes-chambertin. Il se trouve au sud de l'appellation sur une terre caillouteuse. Le charmes-chambertin est un vin élégant, qui offre au palais beaucoup de rondeur.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `E8735CB9-154F-4A92-936A-530E1FA7CA89` = DefaultWineAppellation(
        id: UUID(uuidString: "E8735CB9-154F-4A92-936A-530E1FA7CA89")!,
        name: "Chambertin-Clos-de-Bèze",
        description: "Doyen de tous les clos bourguignons, le clos de Bèze est mentionné en 640 lorsque le duc de Bourgogne donne à cette abbaye située au nord-est de Dijon terres et vignes à Gevrey. Le clos appartient aux chanoines de Langres jusqu'à la Révolution. Ce cru, situé en haut du coteau, entre **chambertin** et **mazis-chambertin**, est devenu au fil des temps assez symbolique. Implanté sur des sols minces, il donne des vins complexes et racés.",
        rawWindow: "10 à 20 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `AA10CC5E-DC75-47ED-BC21-22A80447584F` = DefaultWineAppellation(
        id: UUID(uuidString: "AA10CC5E-DC75-47ED-BC21-22A80447584F")!,
        name: "Fixin",
        description: "Juste au sud de l'aire du marsannay, dans **la Côte de Nuits**, les premiers crus de fixin occupent la partie supérieure du coteau, sur des sols bruns calcaires. Les climats des Arvelets, des Hervelets et du Chapitre sont parmi les plus remarquables, mais c'est le Clos de la Perrière qui en est le chef de file. L'appellation villages se situe un peu plus bas sur des sols de marnes et de calcaires. Les fixin sont des vins puissants, structurés et de bonne garde.",
        rawWindow: "Rouge : 5 à 10 ans.\nBlanc : 3 à 6 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `BD373FD9-9457-4CF1-B8AD-70DBF34EED42` = DefaultWineAppellation(
        id: UUID(uuidString: "BD373FD9-9457-4CF1-B8AD-70DBF34EED42")!,
        name: "Marsannay",
        description: "Au nord de la Côte de Nuits, trois communes (Chenôve, Marsannay-la-Côte et Couchey) produisent des vins rouges, rosés et blancs. Cette appellation est exposée à l'est et parfois au sud, sur des pentes douces situées entre 260 et 320&nbsp;m d'altitude. Les sols bruns, secs et calcaires, comportent des cailloux et des graviers qui permettent un bon drainage naturel. Les vins de l'AOC portent, de plus en plus souvent, le nom de leur village d'origine. En effet, les microclimats, les combes, les failles créent ici des nuances. Les vins blancs et les vins rouges sont produits au-dessus de la route des Grands Crus, tandis que les rosés, très élégants, proviennent d'une aire plus vaste.",
        rawWindow: "Rouge : 5 à 10 ans (jusqu’à 15 ans pour les grands millésimes).\n Rosé : 2 ans.\n Blanc : 2 à 3 ans (jusqu’à 8 à 10 ans les grands millésimes).\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `CE096002-2AF3-461F-9469-1ACA95A54CB5` = DefaultWineAppellation(
        id: UUID(uuidString: "CE096002-2AF3-461F-9469-1ACA95A54CB5")!,
        name: "Mazoyères-Chambertin",
        description: "**Au sud de l'aire du gevrey-chambertin**, ce grand cru est situé entre la route des Vins et la route nationale. Taux de calcaire actif très élevé, terre caillouteuse et habitude historique de confondre mazoyères et charmes sous l'étiquette de charmes... Telles sont les caractéristiques de cette appellation.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `5C7DCA40-E0AE-4910-A421-908944CAA776` = DefaultWineAppellation(
        id: UUID(uuidString: "5C7DCA40-E0AE-4910-A421-908944CAA776")!,
        name: "Ruchottes-Chambertin",
        description: "L'un des neuf grands crus de **Gevrey-Chambertin**, commune de **la Côte de Nuits** qui tire sa notoriété du **chambertin** et du **chambertin-clos-de-bèze**, vignobles mis en valeur au VII e&nbsp;siècle par l'abbaye de Bèze après une donation du duc de Bourgogne. Couvrant un coteau au sud du village et de la combe de Lavaux, ces grands crus, exposés au levant et installés sur des calcaires durs, constituent pour le **pinot noir** un terroir exceptionnel. Jouxtant les Mazis et Chambertin Clos de Bèze, les Ruchottes-Chambertin occupent la partie haute et la plus sauvage du vignoble, juste sous les bois. Le nom du climat, apparu en 1508, vient de «&nbsp;ruchot&nbsp;», rocher à fleur de terre. De fait, le calcaire affleure dans ce cru où l'on trouve des murgers (tas de pierres), des vieux murs, des ronciers. Cette petite appellation, au sol superficiel et caillouteux, produit des vins d'une merveilleuse distinction. Le Clos des Ruchottes, qui représente un tiers du grand cru, est un monopole du domaine Armand Rousseau.",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `CE2B53DD-02E9-4019-8F8F-658851F98C8D` = DefaultWineAppellation(
        id: UUID(uuidString: "CE2B53DD-02E9-4019-8F8F-658851F98C8D")!,
        name: "Morey-Saint-Denis",
        description: "**Entre&nbsp;Gevrey-Chambertin et Chambolle-Musigny**, **Morey-Saint-Denis est l'une des communes de&nbsp;la Côte de Nuits les mieux pourvues en grands crus**. La vigne, exposée plein est, produit surtout des vins rouges solides et charnus dans le haut du coteau et le piémont, au-dessus et au-dessous des crus. Nés des sols graveleux descendus de la combe, les vins sont plus légers.",
        rawWindow: "Rouge : 3 à 15 ans (plus pour les grands millésimes et les meilleurs 1ers crus).\nBlanc : 2 à 4 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `003C0EDD-CE34-44D9-AD63-D5BC65B06D76` = DefaultWineAppellation(
        id: UUID(uuidString: "003C0EDD-CE34-44D9-AD63-D5BC65B06D76")!,
        name: "Clos-de-Tart",
        description: "Trois propriétaires seulement depuis le Moyen Âge&nbsp;! Situé entre 250 et 300&nbsp;m d'altitude, le clos est d'un seul tenant auprès des bâtiments d'exploitation, entre le **clos-des-lambrays** et les **bonnes-mares** au sud de **Morey-Saint-Denis**. Il a appartenu aux religieuses de Tart de 1250 jusqu'à la Révolution, puis aux Marey-Monge, et enfin à la famille Mommessin depuis 1932. Le vin des jeunes vignes est vendu comme morey-saint-denis premier cru sous le nom de La Forge à la manière du second vin d'un grand cru du Bordelais. Le clos-de-tart est assemblé au moment de la mise en bouteilles (25?000 à 30?000&nbsp;bouteilles par an), selon une cuvée unique.",
        rawWindow: "10 à 20 ans (30 à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `F012957A-852F-49C9-A16F-7D3FB60F6688` = DefaultWineAppellation(
        id: UUID(uuidString: "F012957A-852F-49C9-A16F-7D3FB60F6688")!,
        name: "Musigny",
        description: "Exposé au levant en pleine Côte de Nuits, le musigny occupe une terrasse rocheuse et calcaire, juste au-dessus du château du Clos de Vougeot. Coupé d'est en ouest par un chemin, il était jadis double, divisé entre Grand et Petit Musigny, selon la superficie des parcelles. Le décret de 1936 en a fait un seul et légitime grand cru. Ici, la vigne a souvent plus de quarante ans d'âge&nbsp;: elle produit un grand vin de garde qui a besoin de quatre à cinq ans pour commencer à s'ouvrir, mais qui peut ensuite s'épanouir pendant de longues années. Le musigny blanc, très rare, est produit exclusivement par le domaine Comte Georges de Vogüé.",
        rawWindow: "Rouge : 10 à 50 ans selon le millésime.\n Blanc : 5 à 20 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `3CD29464-1369-470F-8FEE-F9F6818F9DDC` = DefaultWineAppellation(
        id: UUID(uuidString: "3CD29464-1369-470F-8FEE-F9F6818F9DDC")!,
        name: "Mazis-Chambertin",
        description: "**Au nord du chambertin-clos-de-bèze**, mazis-chambertin a des airs de famille indéniables avec son grand voisin. Son nom, apparu dès 1420, rappelle les masures qui jalonnaient le coteau. Ici, il y a très peu de terre, mais elle est sans pareil pour produire des vins riches en nuances, puissants. Les Hospices de Beaune produisent une cuvée de ce grand cru (donation Thomas-Collignon en 1976).",
        rawWindow: "10 à 15 ans (jusqu’à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `1B377B41-4D83-454D-A8D8-26BDC67FBF0C` = DefaultWineAppellation(
        id: UUID(uuidString: "1B377B41-4D83-454D-A8D8-26BDC67FBF0C")!,
        name: "Clos-des-Lambrays",
        description: "Sur la partie méridionale de **Morey-Saint-Denis**, le vignoble du clos-des-lambrays est implanté entre le **clos-saint-denis** et le **clos-de-tart**, autres grands crus, entre 250 et 320&nbsp;m d'altitude. Ce clos résulte d'un remembrement de quelque 75&nbsp;parcelles au milieu du XIX e&nbsp;siècle. Situé dans une zone centrale du village, le clos possède une partie marneuse sur sa hauteur, une partie argilo-calcaire dans le bas. Le domaine a pour siège une belle demeure construite en 1630, entourée d'un parc. À l'exception d'une petite parcelle, il appartient à un seul propriétaire. Le clos-des-lambrays a été reconnu tardivement faute de l'avoir sollicité dans les années 1930. Il regroupe plusieurs parcelles et lieux-dits : les Bouchots, les Larrêts ou clos des Lambrays, le Meix-Rentier.",
        rawWindow: "11 à 20 ans (30 à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `7573A550-C92B-4703-9EC4-0B486025F5C7` = DefaultWineAppellation(
        id: UUID(uuidString: "7573A550-C92B-4703-9EC4-0B486025F5C7")!,
        name: "Clos-de-la-Roche",
        description: "Ce grand cru voisin de **Gevrey-Chambertin** est situé dans la partie nord de **Morey-Saint-Denis**, entre 250 et 300m d'altitude sur le coteau, dans le prolongement des **latricières-chambertin** et des Combottes. Le «&nbsp;clos&nbsp;» est devenu un grand cru fédérateur de climats et comprend plusieurs lieux-dits. Nettement calcaire, l'AOC clos-de-la-roche se trouve sur l'assise rocheuse qui lui a donné son nom. Elle donne un vin charpenté, à la forte texture.",
        rawWindow: "10 à 20 ans (30 à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `973C37C4-599A-42EF-AC27-ECB805CF3357` = DefaultWineAppellation(
        id: UUID(uuidString: "973C37C4-599A-42EF-AC27-ECB805CF3357")!,
        name: "Clos-Saint-Denis",
        description: "Avec le **clos-de-la-roche**, le **clos-des-lambrays**, le **clos-de-tart** et, pour partie, les **bonnes-mares**, le clos-saint-denis figure au nombre des grands crus de **Morey-Saint-Denis**, petite commune de **la Côte de Nuits** située au sud de **Gevrey-Chambertin**. Créé dès le XI e&nbsp;siècle, il a été rattaché jusqu'à la Révolution à la collégiale de Saint-Denis, chapelle du château de Vergy, puissante forteresse des Hautes-Côtes rasée au XVII e&nbsp;siècle. Le vignoble sert de porte-étentard au village qui s'appelait simplement Morey jusqu'au début du XX e&nbsp;siècle. Occupant la partie médiane du coteau, entre 280 et 320&nbsp;m d'altitude, il comptait 2 ha à l'origine. Il s'est agrandi de climats voisins (Maison Brûlée, Calouère et Chaffots en partie), si bien qu'il couvre aujourd'hui un peu plus de 6,5 ha, pour une quarantaine de parcelles, qui donnent quelque 20000 à 25000 bouteilles. Nés de sols à forte teneur en argile, les vins de ce grand cru se distinguent par leur rondeur et par leur élégance.",
        rawWindow: "10 à 20 ans (30 à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `AF12D054-0E3A-490B-8E11-83C197837969` = DefaultWineAppellation(
        id: UUID(uuidString: "AF12D054-0E3A-490B-8E11-83C197837969")!,
        name: "Clos-de-Vougeot",
        description: "Fondé vers 1110 par l'abbaye de Cîteaux, le clos de Vougeot est à la fois un vignoble, un vin et un château, ceint des mêmes murs depuis des siècles. Entre **Chambolle-Musigny** et Flagey-Échézeaux en Côte de Nuits, le grand cru de Clos-de-Vougeot s'étend (château non compris) sur quelque 50&nbsp;ha, divisés en une centaine de parcelles appartenant à quatre-vingts propriétaires. Le grand nombre des parcelles et leur diversité expliquent la variété de caractères rencontrés, l'impossibilité réelle de présenter un portrait unique du clos-de-vougeot, même s'il existe des traits communs.&nbsp;",
        rawWindow: "(plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `8494E456-C24F-4C1E-869D-E746260C4AEC` = DefaultWineAppellation(
        id: UUID(uuidString: "8494E456-C24F-4C1E-869D-E746260C4AEC")!,
        name: "Bonnes-Mares",
        description: "À la limite de Morey-Saint-Senis et de Chambolle-Musigny, prolongeant le clos-de-tart, bonnes-mares est l'un des grands crus les plus réputés de Bourgogne. Ses vins offrent au pinot noir l'une de ses expressions les plus accomplies. Bonnes-mares doit sans doute son nom au vieux mot marer, cultiver. Des parcelles bien soignées, ou aisées à cultiver.",
        rawWindow: "10 à 20 ans (30 à 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `0663BADC-7879-4CCC-8128-E7693273A7EA` = DefaultWineAppellation(
        id: UUID(uuidString: "0663BADC-7879-4CCC-8128-E7693273A7EA")!,
        name: "Vougeot",
        description: "Une petite rivière rejoint la Saône, la Vouge, qui a donné son nom à un village au cœur de **la Côte de Nuits**, niché entre **Chambolle-Musigny** et Flagey-Échézeaux. Vougeot est une minuscule appellation qui peut difficilement grandir entre le célèbre **clos-de-vougeot** et le **musigny**. Les deux tiers de son vignoble sont occupés par les premiers crus répartis entre **pinot noir** et **chardonnay**. Car dans une région vouée aux crus rouges, l'originalité de vougeot tient à ses vins blancs historiques nés au Clos blanc.",
        rawWindow: "5 à 15 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `3EA9360E-37F8-4825-89AB-74795B8BC84A` = DefaultWineAppellation(
        id: UUID(uuidString: "3EA9360E-37F8-4825-89AB-74795B8BC84A")!,
        name: "Chambolle-Musigny",
        description: "Ce village aux maisons serrées les unes contre les autres garde tout son sol pour la vigne&nbsp;: 200&nbsp;ha produisant ce vin de soie et de dentelle qui est le plus «&nbsp;féminin&nbsp;» de la **Côte de Nuits**. Les Amoureuses produit la bouteille de proue des premiers crus, aussi estimée qu'un grand cru.",
        rawWindow: "3 à 15 ans (plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `3F4B0DAB-A364-4856-BF6E-900D96974CF2` = DefaultWineAppellation(
        id: UUID(uuidString: "3F4B0DAB-A364-4856-BF6E-900D96974CF2")!,
        name: "Grands-Échézeaux",
        description: "**Entre&nbsp;Chambolle-Musigny et Vosne-Romanée, grands-échézeaux est l'un des grands crus qui ont fait la réputation de la Côte de Nuits, en Côte d'Or**. Ses voisins&nbsp;? **Échézeaux**, à l'est, sur la partie haute du même coteau, **musigny**, dans le prolongement au nord, et, à l'est, le **clos-de-vougeot**, dont le cru ne se distingue que par le mur qui sépare les deux vignobles. Comme vougeot, grands-échézeaux est une création des moines de Cîteaux, au XII e&nbsp;siècle. **Ses vins allient puissance, distinction et longévité**.",
        rawWindow: "10 à 15 ans (jusqu’à 20 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `E0C78C45-962F-416C-A508-07907203B06B` = DefaultWineAppellation(
        id: UUID(uuidString: "E0C78C45-962F-416C-A508-07907203B06B")!,
        name: "Romanée (la)",
        description: "Dominant la **romanée-conti**, dont elle n'est séparée que par un chemin au-dessus du village de Vosne, **la romanée constitue la plus petite appellation de France**. Ce grand cru est depuis 1833 la propriété de la famille Liger-Belair, célèbre dynastie de la Bourgogne viticole issue d'un général d'Empire qui constitua un prestigieux vignoble en **Côte de Nuits**.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `88670075-6187-4327-9EF5-0365A0F916F2` = DefaultWineAppellation(
        id: UUID(uuidString: "88670075-6187-4327-9EF5-0365A0F916F2")!,
        name: "Échézeaux",
        description: "Au milieu de **la Côte de Nuits**, **entre les appellations&nbsp;chambolle-musigny et vosne-romanée**, dominant le **clos de Vougeot**, les échézeaux constituent l'un des plus grand crus rouges de Bourgogne. Une création des moines de Cîteaux, il y a neuf siècles. Le nom vient de chezeaux, groupe de maisons, hameau. On disait autrefois Écheuzaux, d'où la prononciation de cette appellation... malgré l'orthographe actuelle. Les échézeaux, beaucoup plus étendus que les **grands-échézeaux**, comportent des climats aux aptitudes diverses. Ces vins solides, charpentés, pleins de sève sont de longue garde.",
        rawWindow: "10 à 15 ans (jusqu’à 20 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `E1ECE989-AE1B-41BF-AC5B-A059769F26F7` = DefaultWineAppellation(
        id: UUID(uuidString: "E1ECE989-AE1B-41BF-AC5B-A059769F26F7")!,
        name: "Vosne-Romanée",
        description: "Vosne-romanée a accolé à son nom celui de Romanée en 1866. Le vignoble couvre une centaine d'hectares sur cette commune et sur Flagey-Échézeaux. Il touche à la **romanée-conti**, à **la romanée**, à la **romanée-saint-vivant** et à **la tâche**, aux **échézeaux** et aux **grands-échézeaux**, aux **richebourgs**... Si ces merveilleux grands crus révèlent une complexité qui n'a guère d'équivalent pour le **pinot noir**, les premiers crus et les villages ont souvent des qualités bien proches.",
        rawWindow: "5 à 15 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `0B6F7791-88A7-4445-A4E4-D88023499027` = DefaultWineAppellation(
        id: UUID(uuidString: "0B6F7791-88A7-4445-A4E4-D88023499027")!,
        name: "Romanée-Conti",
        description: "Trois grands crus de l'aire de **vosne-romanée** portent le nom de romanée&nbsp;: **romanée-saint-vivant** et deux crus monopoles, **la romanée** et romanée-conti. Ce dernier est l'un des vins les plus prestigieux et les plus chers du monde&nbsp;: il est produit en bouteilles numérotées –&nbsp;6&nbsp;000 tout au plus. Quant au domaine, son histoire est emblématique de la Bourgogne viticole&nbsp;: jusqu'en 1584 propriété des moines de Saint-Vivant, il fut acquis à prix d'or en 1760 par celui qui lui donna son prestige et son nom, Louis-François de Bourbon, prince de Conti. Sa superficie et ses limites n'ont pratiquement pas varié depuis le début du XVI e&nbsp;siècle.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `CB70508F-4207-4A42-8952-300B4A41F78C` = DefaultWineAppellation(
        id: UUID(uuidString: "CB70508F-4207-4A42-8952-300B4A41F78C")!,
        name: "Richebourg",
        description: "On dit les Richebourgs pour la vigne et le richebourg pour le vin. Il existe en effet deux climats jumeaux sur le coteau de **Vosne-Romanée** qui ont le droit de produire du richebourg&nbsp;: «&nbsp;les Richebourgs&nbsp;» proprement dits et «&nbsp;les Véroilles&nbsp;». Seul un sentier sépare la romanée-conti de richebourg. Les fins éboulis offrent au vignoble une implantation exceptionnellement favorable associée à des microclimats parfaits. Le terroir exposé au levant et à l'est-nord-est produit l'un des plus grands vins de Bourgogne.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `191E4B2F-DF6E-4EAA-9D9C-BB3F27B9048B` = DefaultWineAppellation(
        id: UUID(uuidString: "191E4B2F-DF6E-4EAA-9D9C-BB3F27B9048B")!,
        name: "Nuits-Saint-Georges",
        description: "**Entre Dijon et Beaune, Nuits-Saint-Georges a donné son nom à la Côte de Nuits**. L'appellation s'étend sur Nuits-Saint-Georges, touchant au nord **Vosne-Romanée** et Premeaux-Prissey en direction de Beaune. Les différences de sols, d'orientations et de situations entre les vignobles du nord et du sud de Nuits sont à l'origine de la diversité des vins, mais ceux-ci sont toujours solides et de garde. Si la production est presque entièrement consacrée au **pinot noir**, il existe quelques pieds de **chardonnay** dans les premiers crus Clos Arlot, Les Perrières et Les Porrets Saint-Georges.",
        rawWindow: "Rouge : 5 à 15 ans.\nBlanc : 2 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `92ED98BF-3CB2-4D00-8A9D-5B96D0C8AE34` = DefaultWineAppellation(
        id: UUID(uuidString: "92ED98BF-3CB2-4D00-8A9D-5B96D0C8AE34")!,
        name: "Romanée-Saint-Vivant",
        description: "La Romanée-Saint-Vivant doit sa naissance et son nom à un monastère, grand prieuré de Cluny. Ce vignoble est devenu célèbre à la fin du XVIII e&nbsp;siècle lorsque le prince de Conti retira sa romanée du commerce et s'en réserva les bienfaits. L'appellation, qui repose sur des terrains marneux dans la partie haute, produit chaque année 40&nbsp;000&nbsp;bouteilles environ d'un très grand vin rouge issu du pinot noir et capable d'un long vieillissement. Le domaine de La Romanée-Conti, le plus important producteur de cette AOC, s'attache aujourd'hui à restaurer les vestiges de l'abbaye de Saint-Vivant-de-Vergy dont il est propriétaire.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `A4D2B9EB-D298-49D4-8797-45CB264DCE35` = DefaultWineAppellation(
        id: UUID(uuidString: "A4D2B9EB-D298-49D4-8797-45CB264DCE35")!,
        name: "Tâche (la)",
        description: "**Vosne-Romanée** possède plusieurs grands crus remarquables, dont celui de la tâche, situé au sud de la grande rue et dont le nom provient d'une ancienne expression&nbsp;bourguignonne&nbsp;: «&nbsp;faire une tâche&nbsp;» signifie cultiver une vigne en échange d'une rémunération forfaitaire. La tâche, monopole du domaine de La **Romanée-Conti** depuis 1933, n'a connu que quatre propriétaires depuis le XVII e&nbsp;siècle. Des greffons de ses vignes ont permis de reconstituer le vignoble de La Romanée-Conti entre 1947 et 1948, créant ainsi un lien de parenté entre ces deux vins flamboyants.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `081B165C-AB90-4B2A-A72D-69B72FD34513` = DefaultWineAppellation(
        id: UUID(uuidString: "081B165C-AB90-4B2A-A72D-69B72FD34513")!,
        name: "Côte-de-Nuits-Villages",
        description: "L'appellation côte-de-nuits-villages est réservée à la production de cinq communes réparties aux deux extrémités de la Côte de Nuits&nbsp;: au nord, **Fixin** qui a le choix entre sa propre AOC et cette autre appellation; Brochon, dont une partie est classée en **AOC gevrey-chambertin**; au sud, une partie de Prissey, Comblanchien et Corgoloin. Le côte-de-nuits-villages est essentiellement un vin rouge, né du **pinot noir**. Quasiment inexistant autrefois, le blanc progresse peu à peu.",
        rawWindow: "Rouge : 3 à 5 ans.\nBlanc : 2 à 3 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`B70CA0AB-4A2E-46E4-9410-FB7C76DAB6CD`
    )

    static let `84F9B549-5131-441B-B410-F5C28364F745` = DefaultWineAppellation(
        id: UUID(uuidString: "84F9B549-5131-441B-B410-F5C28364F745")!,
        name: "Vézelay",
        description: "Connue dès le Xe siècle, sous l'impulsion de l'abbaye de Vézelay, cette ancienne dénomination géographique complémentaire de l'appellation régionale bourgogne a sa propre appellation depuis 2022. Située en Bourgogne à l'orée du parc régional du Morvan, dans le sud du département de l'Yonne, et regroupée sur les coteaux des villages de Vézelay d'Asquins, Saint-Père et Tharoiseau, elle produit exclusivement du vin blanc à partir du chardonnay : un vin qui gagne en complexité et en finesse avec l'âge et qui se distingue par son caractère floral, sa fraîcheur et sa minéralité.&nbsp;",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `5CBCD050-1641-47E2-A9BA-3A7D973A2FC1` = DefaultWineAppellation(
        id: UUID(uuidString: "5CBCD050-1641-47E2-A9BA-3A7D973A2FC1")!,
        name: "Saint-Bris",
        description: "Enfant de la Loire, le **sauvignon** a fait souche en Bourgogne. Présent dès le XIX e&nbsp;siècle en Auxerrois, non loin de Chablis, il s'est développé après la crise phylloxérique et a subsisté à Saint-Bris-le-Vineux, ainsi que dans quatre communes limitrophes situées à 10 km en amont d'Auxerre, où il cohabite avec les cépages traditionnels de la Bourgogne, **pinot noir** et le **chardonnay**. Les vignerons lui réservent les coteaux exposés au nord et à l'ouest, sur des terrains marneux, et les bordures des plateaux calcaires pour obtenir des vins qui misent sur la fraîcheur. Vin délimité de qualité supérieure en 1974, puis AOC en 2003, l'appellation délivre un message original dans des vins aromatiques qui s'épanouissent jeunes.",
        rawWindow: "5 à 6 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `12AFF253-B39A-43C8-B73E-C37BA973E97A` = DefaultWineAppellation(
        id: UUID(uuidString: "12AFF253-B39A-43C8-B73E-C37BA973E97A")!,
        name: "Chablis Grand Cru",
        description: "L'appellation chablis grand cru concerne les terroirs les plus prestigieux. Elle couvre 100&nbsp;ha, presque tous plantés sur la seule commune de Chablis. Sept climats (lieux-dits) constituent ainsi le fin du fin parmi les chablis. Il ne s'agit pas de sept grands crus, mais d'un seul grand cru – chablis grand cru – divisé en climats. Situé sur la rive droite du Serein, fort bien exposé, il bénéficie de terrains très favorables, enrichis par des colluvions argilo-pierreuses.",
        rawWindow: "10 à 15 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `B7D97E5C-5017-4846-B4B7-0E5ADC975590` = DefaultWineAppellation(
        id: UUID(uuidString: "B7D97E5C-5017-4846-B4B7-0E5ADC975590")!,
        name: "Irancy",
        description: "Blotti au fond d'un vallon débouchant sur la rive droite de l'Yonne, à 15&nbsp;km en amont d'Auxerre, Irancy offre l'image pittoresque d'un vieux village vigneron. Les ceps colonisent principalement des pentes marneuses dominées par la Côte des Bars. **L'irancy est un vin rouge robuste issu de pinot noir, auquel se mêle parfois un rustique cépage local, le césar**. Des lieux-dits peuvent figurer sur l'étiquette&nbsp;: Côte du Moutier, Les Cailles, Boudardes, Vauchassy, Les Mazelots, Les Bessys et la Palotte, un climat estimé de longue date.",
        rawWindow: "5 à 12 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`6F830C77-D562-4365-AD92-BE4249663054`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `B3C83087-B7CD-42D3-B86C-CA67CD3F5A88` = DefaultWineAppellation(
        id: UUID(uuidString: "B3C83087-B7CD-42D3-B86C-CA67CD3F5A88")!,
        name: "Chablis Premier Cru",
        description: "Comme partout en Chablisien, la vigne est née des œuvres de l'abbaye cistercienne de Pontigny. Implantés sur des terrains de calcaires argileux et de marnes du kimméridgien et, un peu plus haut sur les coteaux, de calcaires, entre 150 et 190&nbsp;m d'altitude, les premiers crus de chablis se situent sur les deux rives du Serein, encadrant les grands crus (rive droite), ou leur faisant face (rive gauche). L'aire de l'appellation s'étend sur les huit communes de Chablis, Fontenay, Maligny, Chichée, La Chapelle-Vautelpeigne, Courgis, Fleys et Beines. Les climats les plus renommés sont la Montée de Tonnerre, Mont de Milieu, Forêts, Fourchaume et Vaillons.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `580D4302-577B-46A6-A8F7-CD167357898E` = DefaultWineAppellation(
        id: UUID(uuidString: "580D4302-577B-46A6-A8F7-CD167357898E")!,
        name: "Petit-Chablis",
        description: "Dans la partie la plus septentrionale de la Bourgogne, proche d'Auxerre, le Chablisien a réussi à imposer l'image d'un vin blanc sec à la personnalité affirmée, en adoptant très tôt une politique de qualité. La consécration du petit-chablis en AOC constitue la première marche dans la hiérarchie des quatre appellations de cette aire.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `A99E2EDF-9E9C-415B-BBA4-DB21C38EC5B2` = DefaultWineAppellation(
        id: UUID(uuidString: "A99E2EDF-9E9C-415B-BBA4-DB21C38EC5B2")!,
        name: "Chablis",
        description: "Dans la partie la plus septentrionale de la Bourgogne, les vignes du Chablisien longent le Serein sous une exposition dominante sud-sud-est favorisant la maturation des raisins. Adoptant très tôt une politique de qualité, se consacrant au **chardonnay**, le **chablis,** principal vignoble de l'Yonne, a réussi à imposer au monde l'image d'un vin blanc sec à la personnalité affirmée. Quatre appellations ont ainsi été consacrées pour une vingtaine de villages&nbsp;: **chablis grand cru**, **chablis premier cru**, chablis et **petit-chablis**.&nbsp;\n\nLe **chablis** doit à son sol ses qualités inimitables de fraîcheur et de légèreté. Les années froides ou pluvieuses lui conviennent mal, son acidité devenant alors excessive. En revanche, il conserve lors des années chaudes une fraîcheur et une minéralité que n'ont pas les vins de la Côte d'Or, également issus du **chardonnay**. On le boit jeune, mais il peut vieillir jusqu'à dix ans et plus, gagnant ainsi en complexité.&nbsp;\n\n**Superficie :****3150 ha**\n\n**Production :**&nbsp; **187 000 hl**",
        rawWindow: "3 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`A361E359-9B5A-49B4-8686-5D3E71B9D3D0`
    )

    static let `4DF86BC9-5D2E-4A3E-85B1-453416FF4AB6` = DefaultWineAppellation(
        id: UUID(uuidString: "4DF86BC9-5D2E-4A3E-85B1-453416FF4AB6")!,
        name: "Viré-Clessé",
        description: "Les villages de Viré et de Clessé se situent entre Tournus et Mâcon. Première appellation communale issue des **mâcon-villages**, viré-clessé exprime sa personnalité au sein de ce vignoble&nbsp;: elle produit exclusivement des vins blancs à partir du **cépage chardonnay**, vins d'une belle structure et d'une grande richesse. La mention «&nbsp;grand vin de Mâcon&nbsp;» (ou de Bourgogne) peut figurer sur l'étiquette. Cette appellation a fait disparaître les dénominations mâcon-viré et mâcon-clessé avec le millésime 2002.",
        rawWindow: "5 à 6 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `9FC523A0-7C10-4F00-A5C2-41ACAC60908F` = DefaultWineAppellation(
        id: UUID(uuidString: "9FC523A0-7C10-4F00-A5C2-41ACAC60908F")!,
        name: "Saint-Véran",
        description: "Dans la partie la plus méridionale de la Saône-et-Loire, à la limite du Beaujolais, la vallée de l'Arlois définit nettement la coupure géologique entre **le Mâconnais**&nbsp;et son voisin du sud. À proximité du **pouilly-fuissé**, le saint-véran septentrional s'étend sur Prissé et Davayé, le saint-véran méridional sur Chasselas, Leynes, Chânes, Saint-Vérand et quelques parcelles sur Solutré-Pouilly et Saint-Amour-Bellevue. Ce vin blanc, élégant, que l'on surnommait autrefois le beaujolais blanc, tire du **chardonnay** sa générosité et sa subtilité.",
        rawWindow: "5 à 7 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `F1DCC235-BCEB-4C3A-B215-43A17BD2A919` = DefaultWineAppellation(
        id: UUID(uuidString: "F1DCC235-BCEB-4C3A-B215-43A17BD2A919")!,
        name: "Pouilly-Loché",
        description: "À l'ouest de Mâcon, le vignoble du pouilly-loché occupe le pied de la roche de Solutré. **L'aire de production est entièrement située sur celle du pouilly-vinzelles**, ce qui explique que le vin puisse également être vendu sous cette étiquette. **Assez rare, le pouilly-loché est un proche cousin du pouilly-fuissé**.",
        rawWindow: "5 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `28DFA7A5-23F4-40BE-BB3C-C12896A871ED` = DefaultWineAppellation(
        id: UUID(uuidString: "28DFA7A5-23F4-40BE-BB3C-C12896A871ED")!,
        name: "Mâcon Supérieur",
        description: "Situé en Saône-et-Loire, à l'extrémité sud de la Côte de Beaune, le vignoble des Maranges regroupe les trois communes de Chailly, Dezize et Sampigny-lès-Maranges qui avaient leur propre appellation jusqu'en 1989. Il comporte six 1ers&nbsp;crus. **Les vins rouges ont droit également à l'AOC côte-de-beaune-villages**. Fruités, corpulents et charpentés, ils peuvent vieillir de cinq à dix ans.",
        rawWindow: "10 à 20 ans (plus de 50 ans pour les grands millésimes).\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `27007EAD-46CB-47DE-815A-4432A3435839` = DefaultWineAppellation(
        id: UUID(uuidString: "27007EAD-46CB-47DE-815A-4432A3435839")!,
        name: "Pouilly-Vinzelles",
        description: "**Voici l'un des «&nbsp;jumeaux du&nbsp;Mâconnais », avec pouilly-loché**, dont il partage l'aire de production dans cette région qui jouxte le nord du Beaujolais. Les coteaux forment de petits cirques aux versants assez abrupts, exposés à l'est et au sud-est, entre 250 et 350&nbsp;m d'altitude. **Le chardonnay produit des vins secs**, francs et agréables, **très proches du pouilly-fuissé**.",
        rawWindow: "5 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `D48916BA-75FF-4778-AFBD-CF44FCA99820` = DefaultWineAppellation(
        id: UUID(uuidString: "D48916BA-75FF-4778-AFBD-CF44FCA99820")!,
        name: "Pouilly-Fuissé",
        description: "Du haut de la roche de Solutré et de ses 493&nbsp;m d'altitude, 200&nbsp;millions d'années contemplent la vague dorée du pouilly-fuissé en Bourgogne du Sud, aux abords de **Mâcon**. Quatre villages ont en commun l'appellation communale pouilly-fuissé&nbsp;: Fuissé, Solutré-Pouilly, Vergisson et Chaintré. **Ce vignoble est l'une des plus belles réussites du chardonnay bourguignon**. Il produit un grand vin blanc plein de charme et très complexe.",
        rawWindow: "5 à 10 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `BB9BE68D-D107-487A-BC4F-8241A7D2460C` = DefaultWineAppellation(
        id: UUID(uuidString: "BB9BE68D-D107-487A-BC4F-8241A7D2460C")!,
        name: "Mâcon et Mâcon-Villages",
        description: "Décalés par rapport à la Côte d'Or, les monts du Mâconnais composent une double succession de chaînons orientés nord-nord-est sud-sud-ouest, entaillés par une série de failles parallèles. Entre les vallées de la Saône et de la Grosne, ces collines sont propices à la culture du chardonnay qui produit ici des vins blancs précoces. Les villages les plus connus sont Lugny, Chardonnay, Azé, Péronne, Viré et Clessé?; ces deux derniers sont devenus une même appellation communale.",
        rawWindow: "Rouge : 3 à 5 ans.\n Rosé : 1 an.\n Blanc : 2 à 4 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`03FB2265-F74B-4F1B-A9FD-E45798106913`
    )

    static let `5DFE18E2-D820-4AF2-B2AC-1B3ADD19D72B` = DefaultWineAppellation(
        id: UUID(uuidString: "5DFE18E2-D820-4AF2-B2AC-1B3ADD19D72B")!,
        name: "Bourgogne-Passetoutgrain",
        description: "AOC régionale, le bourgogne-passetout­grain est presque toujours un vin rouge, exceptionnellement un rosé, produit à partir du pinot noir (un tiers au minimum) associé au gamay noir dont les raisins sont mêlés en cuve. Il ne s'agit donc pas d'un assemblage de vins, mais de raisins vinifiés ensemble. Le bourgogne-passetoutgrain est essentiellement produit en Saône-et-Loire (environ les deux tiers), le reste en Côte-d'Or et dans la vallée de l'Yonne. Les vins sont légers et friands, et doivent être consommés jeunes.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `3E3ECB6B-BBD2-493F-B5CA-B8330B178604` = DefaultWineAppellation(
        id: UUID(uuidString: "3E3ECB6B-BBD2-493F-B5CA-B8330B178604")!,
        name: "Crémant-de-Bourgogne",
        description: "Reconnue en 1975, l'appellation** crémant-de-bourgogne** a remplacé les mousseux dont la qualité n'était pas très homogène.\n\nSon aire géographique, très vaste, couvre **plus de 300&nbsp;communes**, du **Châtillonnais,** aux **confins de la Champagne auboise**, au **Beaujolais inclus**.\n\nL'AOC impose **des conditions de récolte et d'élaboration aussi strictes que celles de la région champenoise** et calquées sur celle-ci, la différence résidant dans la durée de maturation sur lies, qui est de neuf mois au minimum, contre douze pour le champagne. Les cépages utilisés rapprochent aussi le crémant-de-bourgogne de son illustre modèle champenois, car&nbsp;si toutes les variétés de la région peuvent être utilisées, le **pinot noir** et le **chardonnay** sont privilégiés. Le **crémant-de-bourgogne blanc** peut être **blanc de blancs** (**issu de chardonnay**, assemblé ou non à l'aligoté), **&nbsp;blanc de noirs** (à base de pinot noir vinifié en blanc); il peut aussi résulter d'un **assemblage de cépages blancs et de pinot noir et/ou de gamay vinifiés en blanc**. **Le rosé** est à base de **pinot noir**, parfois marié au **gamay**.\n\nFinesse des blanc de blancs, puissance des blancs de noirs, délicatesse des rosés, les crémants-de-bourgogne offrent des profils variés.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`,
            DefaultGrapeVariety.`E1641C39-AE49-4CD0-9A21-C814F7552D55`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `3FB97939-2AE9-4FD1-878E-02A4E20B7DB0` = DefaultWineAppellation(
        id: UUID(uuidString: "3FB97939-2AE9-4FD1-878E-02A4E20B7DB0")!,
        name: "Coteaux Bourguignons",
        description: "L'AOC régionale coteaux-bourguignons est produite sur tout le territoire de la grande Bourgogne qui s'étend de l'Auxerrois, dans l'Yonne, au Beaujolais inclus, sur le territoire de 300&nbsp;communes. Elle remplace le bourgogne-grand-ordinaire (la bouteille du dimanche dans les années 1930), qui avait été nommé ainsi pour le distinguer des crus prestigieux de la Côte-d'Or –&nbsp;une dénomination traditionnelle qui était en voie de disparition du fait de son nom aujourd'hui peu valorisant. L'appellation coteaux-bourguignons produit des vins rouges, des clairets et rosés, et des blancs. Si elle fait appel aux cépages classiques de la région, **pinot noir** et **chardonnay**, le **gamay** est souvent majoritaire et certains cépages locaux en forte régression sont admis. Le **césar** peut ainsi participer aux vins rouges (dans l'Yonne), le **melon** ou le **pinot blanc** aux vins blancs. Contrairement à la quasi-totalité des appellations bourguignonnes qui fournissent des vins monocépages, les coteaux-bourguignons, comme le **bourgogne-passetoutgrain**, peuvent provenir d'assemblages. Ils sont surtout issus des piémonts de coteaux et des plateaux. La diversité des vins, tant en matière de terroir que de composition des assemblages, rend difficile de tracer un portrait type de l'appellation. Celle-ci a toutefois été conçue comme devant donner des vins d'initiation, fruités et à boire jeunes. Les premières bouteilles de l'AOC coteaux-bourguignons proviennent du millésime&nbsp;2011.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `131EA115-3F25-4E0D-A474-4A07070B26F5` = DefaultWineAppellation(
        id: UUID(uuidString: "131EA115-3F25-4E0D-A474-4A07070B26F5")!,
        name: "Bourgogne-Aligoté",
        description: "Cette appellation régionale est la seule à mentionner un nom de cépage. Il y a autant d'aligotés que d'aires bourguignonnes où ils sont élaborés&nbsp;: à Pernand, ils sont souples et fruités; dans les Hautes-Côtes, ils sont frais et vifs; enfin, ceux de Bouzeron ont acquis une appellation distincte. Ce vin blanc sec est un vin de carafe à boire jeune. Il est idéal pour le kir, apéritif composé de crème de cassis et de vin blanc vif et frais.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `03A9FAA0-1B96-4589-9F90-8EF8C1425AA0` = DefaultWineAppellation(
        id: UUID(uuidString: "03A9FAA0-1B96-4589-9F90-8EF8C1425AA0")!,
        name: "Bourgogne-Hautes-Côtes-de-Beaune",
        description: "De Beaune jusqu'aux environs d'Autun, les Hautes-Côtes de Beaune s'étendent sur une trentaine de kilomètres de longueur et une dizaine de largeur. Par monts et par vaux, le paysage forme un écheveau. L'appellation a pris toute sa place dans le panorama de l'AOC régionale bourgogne. Et ses vins, qui ont beaucoup de fruit, ont accompli de grands progrès tout en demeurant à des prix raisonnables.",
        rawWindow: "Rouge : 3 à 5 ans (jusqu’à 10 ans pour les grands millésimes).\n Blanc : 3 à 5 ans.\n Rosé : à boire jeune.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `5BA190FA-AA1D-4222-AB9F-F74AEFF5C4CD` = DefaultWineAppellation(
        id: UUID(uuidString: "5BA190FA-AA1D-4222-AB9F-F74AEFF5C4CD")!,
        name: "Bourgogne-Hautes-Côtes-de-Nuits",
        description: "Les Hautes-Côtes de Nuits, avec celles de Beaune, forment un plateau long d'une quarantaine de kilomètres depuis les hauteurs de Dijon jusqu'aux Maranges, large d'une douzaine de kilomètres entre la Côte et la vallée de l'Ouche. Autour du site historique de Vergy, dans un paysage de collines, sont produits des vins pleins de feu et de montant.",
        rawWindow: "Rouge : 3 à 10 ans.\n Rosé : à boire jeune.\n Blanc : 2 à 8 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `49F125A5-CE4B-4761-B50A-D0BD463B5779` = DefaultWineAppellation(
        id: UUID(uuidString: "49F125A5-CE4B-4761-B50A-D0BD463B5779")!,
        name: "Bourgogne",
        description: "La Bourgogne viticole s'étend du nord de l'Yonne (Joigny) au sud de la Saône-et-Loire (**Pouilly-Fuissé**, **Saint-Véran**), sur quelque 300 km. Elle couvre des départements proprement bourguignons et quelques cantons du Rhône, mais le Beaujolais a pris ici son autonomie. **Le pinot noir**, cépage bourguignon par excellence, produit les plus grands crus rouges du vignoble (**romanée-conti**, **chambertin**, **corton**), mais aussi les bourgognes rouges et rosés. Le bourgogne blanc, issu du **chardonnay**, est récolté sur l'ensemble du territoire régional, au sein d'aires de production strictement délimitées. Les étiquettes de l'appellation portent parfois le nom du lieu-dit (le climat) sur lequel le vin a été produit.",
        rawWindow: "Rouge et blanc : 2 à 5 ansRosé : à boire jeune.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`EAF82AD7-5E98-45A2-ADD1-1E6BB097BF33`
    )

    static let `D5FD7BC7-2BD2-4B0F-AFF8-054951D0A460` = DefaultWineAppellation(
        id: UUID(uuidString: "D5FD7BC7-2BD2-4B0F-AFF8-054951D0A460")!,
        name: "Crémant-de-Luxembourg",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`06918335-9F15-417E-8D48-299AA0931F6C`
    )

    static let `006018E1-B746-412A-A3F1-0F24C6D74171` = DefaultWineAppellation(
        id: UUID(uuidString: "006018E1-B746-412A-A3F1-0F24C6D74171")!,
        name: "Moselle Luxembourgeoise",
        description: "Tout petit vignoble, aux portes d'Aix, qui englobe l'ancien clos du bon roi René. Rosés, rouges et blancs font appel à de nombreux cépages locaux. Les rouges, de garde, expriment la violette et le bois de pin.",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`06918335-9F15-417E-8D48-299AA0931F6C`
    )

    static let `D1E10ED0-A69E-4514-8D51-7E2B7FF1496A` = DefaultWineAppellation(
        id: UUID(uuidString: "D1E10ED0-A69E-4514-8D51-7E2B7FF1496A")!,
        name: "Saint-Sardos",
        description: "La création du vignoble de Saint-Sardos remonte au XII e&nbsp;siècle avec la fondation de l'abbaye cistercienne de Grand-Selve à Bouillac, dans la partie orientale de la Gascogne. À égale distance de Toulouse, de Montauban et d'Agen, l'aire d'appellation s'étend sur la rive gauche de la Garonne, au sud-ouest du Tarn-et-Garonne et au nord de la Haute-Garonne. Le climat est océanique, avec des influences méditerranéennes. C'est la région de la Lomagne, pays de polyculture renommé aussi pour son ail et ses melons. Ancien vin de pays, le saint-sardos a été reconnu en AOVDQS en 2005, puis en AOC en 2011. Sa promotion doit beaucoup à la cave coopérative, qui a réalisé des cultures expérimentales de divers cépages sur ses terroirs. Implantées sur les terrasses anciennes de la Garonne, les vignes engendrent des vins de caractère qui présentent l'originalité d'assembler la **syrah** et le **tannat**, **cépages principaux** (60&nbsp;% minimum des assemblages), complétés par le **cabernet franc** et le **merlot**. L'appellation offre des vins rouges corsés, tanniques et épicés, ainsi que des rosés souples et fruités.",
        rawWindow: "Rouge : 2 à 4 ans.\nRosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`0573C409-B13E-4C15-92F6-6EEB75EE07B5`
    )

    static let `35EC1FD6-E801-406A-A814-CC2AE3865107` = DefaultWineAppellation(
        id: UUID(uuidString: "35EC1FD6-E801-406A-A814-CC2AE3865107")!,
        name: "Brulhois",
        description: "Le comté de Brulhois, en Armagnac, occupe des coteaux qui font suite, sur les rives de la Garonne, à ceux de Moissac et aux collines gasconnes au sud. L'appellation produit surtout des vins rouges, issus des cépages bordelais ainsi que du tannat et du côt. Bien équilibrés et généreusement bouquetés, avec des notes de champignons et d'épices, ils sont à servir jeunes sur des mets régionaux, tels que confits ou magrets de canard. AOVDQS depuis 1984, les côtes-du-brulhois sont devenus AOC brulhois en 2011.",
        rawWindow: "Rouge : 2 à 4 ans.\nRosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`0573C409-B13E-4C15-92F6-6EEB75EE07B5`
    )

    static let `B74A8EED-4B76-47CC-9751-18F4E7412F36` = DefaultWineAppellation(
        id: UUID(uuidString: "B74A8EED-4B76-47CC-9751-18F4E7412F36")!,
        name: "Côtes-du-Marmandais",
        description: "Entre Agen et Bordeaux, le Marmandais est un pays de coteaux et de vallons, bordé au sud par le massif forestier landais. Il constitue une zone de transition entre les coteaux de l'Entre-Deux-Mers à l'ouest et ceux de l'Agenais à l'est. L'appellation produit des vins blancs frais et fruités, des rosés et des rouges souples et bouquetés.",
        rawWindow: "Rouge : 5 à 10 ans.\n Blanc et rosé : 1 à 3 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`
        ],
        region: DefaultWineRegion.`0573C409-B13E-4C15-92F6-6EEB75EE07B5`
    )

    static let `9D30F19E-5036-41AA-AF2B-62CDA83F7F4E` = DefaultWineAppellation(
        id: UUID(uuidString: "9D30F19E-5036-41AA-AF2B-62CDA83F7F4E")!,
        name: "Buzet",
        description: "Connu depuis le Moyen Âge, le vignoble de Buzet se situe à mi-chemin entre Agen et Marmande, entre la rive gauche de la Garonne et les confins de la forêt landaise. Quelques producteurs indépendants et la cave coopérative de Buzet (97&nbsp;% de la production) ont fait le renom de cette intéressante appellation qui produit des vins de caractère, assemblant des cépages du Bordelais.",
        rawWindow: "Rouge : 5 ans et plus.\n Blanc et rosé : 1 à 3 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`0573C409-B13E-4C15-92F6-6EEB75EE07B5`
    )

    static let `F8092A2B-63EE-44C8-B5A7-E53776900D4F` = DefaultWineAppellation(
        id: UUID(uuidString: "F8092A2B-63EE-44C8-B5A7-E53776900D4F")!,
        name: "Fronton",
        description: "Vin des Toulousains, le fronton provient d'un très ancien vignoble, autrefois propriété des chevaliers de l'ordre de Saint-Jean-de-Jérusalem. Lors du siège de Montauban, Louis XIII et Richelieu se livrèrent à force dégustations comparatives... Reconstitué grâce à la création des coopératives de Fronton et de Villaudric, le vignoble a conservé un encépagement original avec la **négrette**, variété locale que l'on retrouve à **Gaillac**&nbsp;; lui sont associés principalement la **syrah**, le **cot**, le **cabernet franc** et le **cabernet-sauvignon**, le **fer-servadou** et le **gamay**.Le terroir occupe les trois terrasses du Tarn, aux sols de boulbènes, de graves ou de rougets. Les vins rouges à forte proportion de cabernet, de gamay ou de syrah sont fruités et aromatiques. Plus riches en négrette, ils sont alors plus puissants, tanniques, dotés d'un fort parfum de terroir aux accents de violette. Les rosés sont francs, vifs et fruités.",
        rawWindow: "Rouge : 4 à 5 ans.\nRosé : à boire jeune.\n",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`9EEE9160-C4BD-4F65-BDD2-0EFFF8808711`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`E53410F3-A1A7-4103-9DD9-0708793B8267`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`0573C409-B13E-4C15-92F6-6EEB75EE07B5`
    )

    static let `1F6C0D69-E22D-4E36-BE6F-BCAB79666B67` = DefaultWineAppellation(
        id: UUID(uuidString: "1F6C0D69-E22D-4E36-BE6F-BCAB79666B67")!,
        name: "Côtes-de-Duras",
        description: "Entre vignobles bordelais à l'ouest, bergeracois au nord et marmandais au sud, l'aire d'appellation se confond avec le canton du Duras. Prolongement de l'Entre-deux-Mers, elle accueille naturellement les cépages bordelais, à l'origine de vins blancs secs, nerveux et racés, ou moelleux, de rouges souples et fruités ou tanniques et de garde, et des rosés frais et fruités.",
        rawWindow: "Rouge : 5 à 10 ans.\n Blanc sec et rosé : 1 à 3 ans.\n Blanc moelleux : 5 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`13B9617D-25F2-4AC1-B451-B37B8B32B7B7`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `C2295228-C446-4D6A-B377-9AF382B4B3CE` = DefaultWineAppellation(
        id: UUID(uuidString: "C2295228-C446-4D6A-B377-9AF382B4B3CE")!,
        name: "Rosette",
        description: "Dans un amphithéâtre de collines dominant au nord la ville de Bergerac et la vallée de la Dordogne, est installée sur un terroir argilo-graveleux l'appellation la plus confidentielle de la région, proposée par une poignée de vignerons. Le vignoble s'étend sur six communes&nbsp;: outre Bergerac, Creysse, Ginestet, Lembras, Maurens et Prigonrieux. Délimitée en 1946 comme le pécharmant, l'AOC rosette chevauche en partie l'aire géographique de ce dernier. Alors qu'elle produisait encore quelque 5&nbsp;000&nbsp;hl dans les années 1950, elle a failli disparaître, et c'est dans les années 1960 qu'elle a été remise au goût du jour. À partir d'assemblages d'au moins deux cépages de la trilogie sémillon-sauvignon-muscadelle, elle produit un vin moelleux souple, rond et aérien. Misant sur l'élégance aromatique plutôt que sur la richesse en sucre, la rosette s'apprécie dès sa jeunesse.",
        rawWindow: "2 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `05B8A1B1-807D-4D1E-800E-98DDB3C1ED1C` = DefaultWineAppellation(
        id: UUID(uuidString: "05B8A1B1-807D-4D1E-800E-98DDB3C1ED1C")!,
        name: "Pécharmant",
        description: "En Dordogne, Pécharmant est un vignoble au nom séduisant, qui bénéficie d'une exposition privilégiée sur les coteaux au nord de Bergerac. Bien que menacé par l'urbanisation et les infrastructures routières, il reste fidèle à sa tradition viticole déjà bien implantée au Moyen Âge. Sur le «&nbsp;Pech&nbsp;» – la colline couverte de vigne – est produit un vin exclusivement rouge, apte à une garde remarquable.",
        rawWindow: "6 à 7 ans (10 à 15 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `9AE017B0-5437-4094-AEB3-4C0E6CF0151E` = DefaultWineAppellation(
        id: UUID(uuidString: "9AE017B0-5437-4094-AEB3-4C0E6CF0151E")!,
        name: "Saussignac",
        description: "On cultive la vigne à Saussignac depuis le début du XI e&nbsp;siècle. François Rabelais ne cite-t-il pas dans son roman Pantagruel «&nbsp;les moines défricheurs de Monestier et grands buveurs de saussignac&nbsp;», l'autre grand mœlleux ou liquoreux du **Bergeracois** qui associe opulence et finesse. Située sur la rive gauche de la Dordogne, l'aire de saussignac s'inscrit dans un superbe paysage de plateaux et de coteaux.",
        rawWindow: "5 à 10 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `B9CD6011-38FE-454B-B9E7-12BA5A6599DB` = DefaultWineAppellation(
        id: UUID(uuidString: "B9CD6011-38FE-454B-B9E7-12BA5A6599DB")!,
        name: "Côtes-de-Montravel",
        description: "Se confondant avec **l'AOC montravel**, le vignoble des côtes-de-montravel est délimité sur le territoire de neuf communes des coteaux de la rive droite de la Dordogne, entre Castillon et Sainte-Foy-la-Grande. Installé sur les versants sud des coteaux, il donne naissance à une petite production de vins moelleux, issus de baies surmûries et concentrées sur souche, dont la teneur en sucres résiduels est comprise entre 25 et 51&nbsp;g/l. Lorsque dans la vallée stagnent des brumes, chassées l'après-midi par un bel ensoleillement, la pourriture noble peut se développer, ce qui permet à certains vignerons de proposer des vins plus riches à partir de raisins botrytisés récoltés par tries successives.",
        rawWindow: "5 à 10 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `CEEBCF9C-05D5-43CD-A626-14D8D708377C` = DefaultWineAppellation(
        id: UUID(uuidString: "CEEBCF9C-05D5-43CD-A626-14D8D708377C")!,
        name: "Haut-Montravel",
        description: "Parmi les quatorze communes qui composent l'aire géographique de montravel au sud-ouest du département de la Dordogne, cinq d'entre elles, à l'est, ont droit à l'AOC haut-montravel. **Ce petit pays situé entre la Dordogne et la rive gauche de l'Estrop, limitrophe du Bordelais, s'est orienté vers les vins blancs doux**, jadis exportés vers l'Europe du Nord. Le vignoble est implanté sur les terrasses graveleuses, sur des coteaux orientés au sud, et sur le plateau jusqu'à la forêt du Landais qui le borne au nord. La production a beaucoup régressé en volume mais non en qualité. Elle comprend des vins mœlleux vifs et fruités (entre 25 et 51&nbsp;g/l de sucres), **assemblages de cépages bordelais dominés par le sémillon**. Les raisins sont récoltés en surmaturation, après concentration sur souche. La présence de la rivière et la proximité de la forêt favorisent, à l'automne, l'apparition de brumes matinales qui se dissipent en milieu de journée pour faire place au soleil. **L'alternance d'humidité et de chaleur est propice au développement du Botrytis cinerea, si bien que l'appellation est également réputée pour ses vins liquoreux**, issus de raisins atteints par la pourriture noble et récoltés par tries successives.",
        rawWindow: "5 à 10 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `AAB29D3F-3837-4826-89EB-FE25B8871651` = DefaultWineAppellation(
        id: UUID(uuidString: "AAB29D3F-3837-4826-89EB-FE25B8871651")!,
        name: "Montravel",
        description: "Le plus célèbre enfant de Montravel est sans nul doute Michel Eyquem de Montaigne qui, après avoir exercé les fonctions de maire de Bordeaux, se retira dans ses terres, où il rédigea ses Essais. Sur la rive droite de la Dordogne, entre Castillon-la-Bataille à l'ouest et Sainte-Foy-la-Grande à l'est, l'AOC montravel est délimitée sur quatorze communes, dans la partie occidentale du département de la Dordogne. Partie intégrante du Bergeracois, elle jouxte des vignobles du Bordelais&nbsp;: à l'est, le Libournais et au nord, l'Entre-deux-Mers et le pays foyen. Son territoire appartenait jadis à l'évêque de Bordeaux, si bien que ses vins jouissaient du privilège qui leur permettait d'entrer librement dans le grand port aquitain. La région a finalement été rattachée au Sud-Ouest viticole au XX e&nbsp;siècle. **Le vignoble partage avec ses voisins girondins son encépagement principal, dominé par le merlot en rouge, le sauvignon et le sémillon en blanc**, son substrat géologique –&nbsp;un calcaire à astéries que l'on retrouve en Libournais et en Entre-deux-Mers. **Il produit des vins d'assemblage, des blancs secs très aromatiques, et des vins rouges ambitieux**, corsés et de garde qui peuvent prétendre eux aussi à l'appellation depuis 2001.",
        rawWindow: "Blanc : 1 à 3 ans.\nRouge : 3 à 5 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `D98E141D-8014-46B8-BE9A-319B699312E3` = DefaultWineAppellation(
        id: UUID(uuidString: "D98E141D-8014-46B8-BE9A-319B699312E3")!,
        name: "Côtes-de-Bergerac",
        description: "Soucieux de créer une catégorie supérieure à l**'AOC bergerac**, les professionnels ont obtenu la reconnaissance des côtes-de-bergerac (en rouge) et des côtes-de-bergerac moelleux (en blanc). Produits sur les mêmes terroirs que les bergerac, ces vins recherchés pour leur concentration s'en distinguent par des conditions restrictives de récolte; ils doivent notamment bannir le cépage ugni blanc pour les moelleux.",
        rawWindow: "Rouge : 3 à 7 ans.\nBlanc moelleux : jusqu’à 5 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`E53410F3-A1A7-4103-9DD9-0708793B8267`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `DC3C179C-ABD2-47B3-8949-1C94440E15D3` = DefaultWineAppellation(
        id: UUID(uuidString: "DC3C179C-ABD2-47B3-8949-1C94440E15D3")!,
        name: "Monbazillac",
        description: "Le vignoble des grands liquoreux du Périgord s'étend sur le territoire de cinq communes autour de Monbazillac. Au cœur du Bergeracois, il fait figure d'exception, une grande partie des ceps étant exposée plein nord, couvrant des coteaux pentus faisant face à la ville de Bergerac, sur la rive gauche de la Dordogne. Ces terroirs bénéficient davantage des brumes matinales d'automne qui favorisent le développement de la pourriture noble. Dès le XVII e&nbsp;siècle, les vignerons ont produit grâce à ce microclimat des vins liquoreux que les huguenots du Sud-Ouest, exilés en Hollande, ont popularisés dans ce pays. Principalement élaborés à partir des cépages blancs du Bordelais récoltés à la main par tries successives, les monbazillac offrent une richesse en sucres de 45&nbsp;g/l. Une teneur qui est de 85&nbsp;g/l pour les sélections de grains nobles, mention réservée aux vins obéissant à des conditions de récolte et de vinification plus strictes et à un élevage de dix-huit mois.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `F3C8A05A-8B2F-4608-9CE7-4A196F9021A9` = DefaultWineAppellation(
        id: UUID(uuidString: "F3C8A05A-8B2F-4608-9CE7-4A196F9021A9")!,
        name: "Bergerac",
        description: "Prolongeant en Périgord le vignoble bordelais avec la même gamme de cépages, l'appellation bergerac constitue une mosaïque de terroirs presque aussi divers que ceux de son grand voisin girondin. De part et d'autre de la vallée de la Dordogne, elle occupe les terres du Périgord, où truffes, cèpes et foie gras complètent un merveilleux paysage gourmand. L'ensemble du Bergeracois est très vallonné et bien drainé. La diversité des sols et les cépages aquitains sont à l'origine de vins rouges souples et ronds mais aussi structurés, de rosés secs ou tendres et de blancs secs.",
        rawWindow: "Rouge : 2 à 5 ans.\n Rosé : 2 ans.\n Blanc sec : jusqu’à 3 ans.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`E53410F3-A1A7-4103-9DD9-0708793B8267`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`698FD187-953D-4E00-89FB-3282B6B4F85B`
    )

    static let `412D9734-BB2E-42E6-A024-78DAB60FFBB6` = DefaultWineAppellation(
        id: UUID(uuidString: "412D9734-BB2E-42E6-A024-78DAB60FFBB6")!,
        name: "Vins-D'Estaing",
        description: "Entourées par les causses de l'Aubrac, les monts du Cantal et le plateau du Lévezou, les appellations de l'Aveyron seraient plutôt à classer parmi celles du Massif central. Ces petits vignobles sont très anciens puisque leur fondation par les moines de Conques remonte au IXes. Les vins-d'estaing se partagent entre rouges et rosés frais et parfumés (cassis, framboise), à base de **fer-servadou** et de **gamay**, et blancs originaux, assemblages de **chenin**, de **mauzac** et de rousselou, des vins vifs au parfum de terroir.",
        rawWindow: "Rouge : 2 à 3 ans.\nBlanc : 1 à 2 ans.\nRosé : à boire jeune.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `646FE43B-1C51-43A6-85E7-0B5D84F45C30` = DefaultWineAppellation(
        id: UUID(uuidString: "646FE43B-1C51-43A6-85E7-0B5D84F45C30")!,
        name: "Entraygues-le-Fel",
        description: "AOVDQS depuis 1965, ce microvignoble à cheval sur le département du Cantal et celui de l'Aveyron a accédé à l'AOC en 2011. Des quatre vignobles aveyronnais, c'est le plus montagnard. Ses vins sont davantage connus à Aurillac qu'à Rodez, survivance des anciens courants commerciaux qui faisaient des Auvergnats les clients attitrés des viticulteurs de la vallée du Lot. Sur les coteaux abrupts longeant cette rivière, premiers contreforts des massifs du Cantal et de l'Aubrac, les vignobles d'Entraygues et du Fel sont implantés sur d'étroites terrasses. Ils se sont développpés au Moyen Âge grâce à la proximité de l'abbaye de Conques. Au confluent du Lot et de la Truyère, le village d'Entraygues – «&nbsp;entre deux eaux&nbsp;» – est au centre d'une aire d'appellation qui compte six communes. Traditionnellement, on produit des vins rouges charnus au Fel, qui se trouve sur des terrains schisteux, et des vins blancs vifs et parfumés à Entraygues, où les sols granitiques conviennent bien au chenin.",
        rawWindow: "Rouge : 3 à 5 ans.\n Blanc : 1 à 4 ans.\n Rosé : à boire jeune.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`9EEE9160-C4BD-4F65-BDD2-0EFFF8808711`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `7F8DB593-B562-4950-9205-012BAC794B25` = DefaultWineAppellation(
        id: UUID(uuidString: "7F8DB593-B562-4950-9205-012BAC794B25")!,
        name: "Côtes-de-Millau",
        description: "L'histoire des côtes-de-millau, situés dans la vallée du Tarn aveyronnaise, est fort ancienne, comme en témoigne un pressoir préhistorique découvert à Montjaux. Les vignes implantées en coteaux sur des terrains sédimentaires profitent de l'influence méditerranéenne; elles sont à l'origine de vins rouges, tanniques, dominés par le **gamay** et la **syrah**, de vins blancs frais et de vins rosés de saignée. AOVDQS depuis 1994, les côtes-de-millau sont devenues AOC en 2011.",
        rawWindow: "Rouge : 2 à 3 ans.\nRosé et blanc : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `89C9A2F1-7742-46DB-B954-19A2D6FC0695` = DefaultWineAppellation(
        id: UUID(uuidString: "89C9A2F1-7742-46DB-B954-19A2D6FC0695")!,
        name: "Coteaux-du-Quercy",
        description: "Entre les appellations **cahors** et **gaillac**, l'aire des coteaux-du-quercy regroupe trente-trois communes des départements du Lot et du Tarn-et-Garonne dans le sud du Quercy. Le **cabernet franc**, principal cépage, se plaît sur les sols de molasses et les plateaux calcaires de la région. Les coteaux-du-quercy produisent essentiellement des vins rouges, charnus et généreux, à la complexité aromatique. Les vins rosés, issus du même encépagement que les rouges, sont fruités et vifs. AOVDQS depuis 1999, les coteaux-du-quercy sont devenus AOC en 2011.",
        rawWindow: "Rouge : 2 à 4 ans.\nRosé : à boire jeune.\n",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `B12D4DB9-52DD-4832-9C6B-AD6BE8EB1CC4` = DefaultWineAppellation(
        id: UUID(uuidString: "B12D4DB9-52DD-4832-9C6B-AD6BE8EB1CC4")!,
        name: "Marcillac",
        description: "À l'ouest de Rodez, au pied de l'Aubrac, Marcillac est la plus importante appellation aveyronnaise, qui a longtemps été la seule à bénéficier de l'AOC. Historiquement liée à l'abbaye de Conques, elle est implantée dans la région naturelle du Vallon de Marcillac, dépression bordée par des régions d'élevage bovin ou ovin. Dans ce piémont du Massif central, les hivers sont rudes, mais les étés se montrent secs et chauds. Le vignoble est implanté sur les coteaux les mieux exposés de vallées encaissées?; généralement très pentus, ces derniers ont souvent été aménagés en terrasses. Le terroir se singularise par ses sols de couleur rouge violacé, riches en oxydes de fer, les rougiers. Cépage principal de l'appellation, le fer-servadou, appelé ici mansois, donne un vin à la fois tannique et très aromatique, d'une grande originalité.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `6E94F48C-5009-4CF8-BAFD-F181432E859A` = DefaultWineAppellation(
        id: UUID(uuidString: "6E94F48C-5009-4CF8-BAFD-F181432E859A")!,
        name: "Cahors",
        description: "## Les vins de Cahors\n\nLe vignoble cadurcien se glisse le long des méandres du Lot, se nichant sur les terrasses et les semi-coteaux aux sols maigres de galets et de graves. L'une des originalités du vignoble a été de conserver le **cépage de Cahors** : le malbec (auxerrois, ou côt), qui renforce la couleur des vins par sa richesse en pigments. Solides et tanniques, les **vins de Cahors** sont de bonne garde, mais ils peuvent aussi être consommés jeunes.",
        rawWindow: "4 à 8 ans (10 ans et plus pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`8BA88391-8159-4D14-B4D9-24894D862964`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `67FC57B8-94B6-4779-865D-4A7EF736291B` = DefaultWineAppellation(
        id: UUID(uuidString: "67FC57B8-94B6-4779-865D-4A7EF736291B")!,
        name: "Gaillac",
        description: "De part et d'autre du Tarn, à une cinquantaine de kilomètres au nord-est de Toulouse, à l'ouest d'Albi, le vignoble gaillacois s'étend sur soixante-treize communes. Sa diversité de terroirs –&nbsp;premières côtes, hauts coteaux, plaine –lui permet d'offrir une large gamme de vins&nbsp;: rouges, blancs secs ou doux (parmi lesquels des vendanges tardives), rosés, mousseux et perlants (dits «&nbsp;perlés&nbsp;»). **L'appellation doit aussi son originalité à ses cépages locaux, tels le mauzac**, **l'ondenc**, l**e len de l'el** ou **le duras**. Exposées au sud, sur les premières pentes de la rive droite du Tarn, les «&nbsp;premières côtes&nbsp;» donnent des vins blancs secs ronds, élégants et longs, produits à petits rendements.",
        rawWindow: "Rouge : 4 à 5 ansBlanc et rosé : à boire jeunes.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`C72FCDCE-8072-49F1-8ED1-232F3D4A4F17`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`13B9617D-25F2-4AC1-B451-B37B8B32B7B7`,
            DefaultGrapeVariety.`941C0FD5-41E2-46B3-9F84-33F9369925BA`,
            DefaultGrapeVariety.`13922A89-5B5B-43BE-94E6-7D5A65BE5E37`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`343A3737-0C2F-46E6-8E80-195205409007`
    )

    static let `B2D30B2B-5962-474F-A4BB-E470D76091AB` = DefaultWineAppellation(
        id: UUID(uuidString: "B2D30B2B-5962-474F-A4BB-E470D76091AB")!,
        name: "Béarn",
        description: "L'appellation régionale béarn couvre, en aval d'Orthez, l'aire des vignobles du Jurançonnais, du Madirannais et de Salies-Bellocq, dans les Pyrénées-Atlantiques, les Hautes-Pyrénées et le Gers. Le vignoble, planté sur les collines prépyrénéennes et les graves de la vallée du Gave, produit des vins rouges corsés, des rosés aromatiques, vifs et délicats, et des blancs légers.",
        rawWindow: "Rouge : 2 à 5 ans.\n Blanc et rosé : à boire jeunes.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`6E682B09-BA9C-48D1-809A-32857EAB5FFC`,
            DefaultGrapeVariety.`7B29A1F1-0BD2-47A6-A87C-D200871D3801`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `396A533A-431D-431A-A8A0-9676EF364B0C` = DefaultWineAppellation(
        id: UUID(uuidString: "396A533A-431D-431A-A8A0-9676EF364B0C")!,
        name: "Floc-de-Gascogne",
        description: "Le floc de gascogne est un vin de liqueur muté à l'armagnac (de 16 à 18&nbsp;% vol.) produit dans l'aire géographique de **l'AOC armagnac**. Cette région viticole fait partie du piémont pyrénéen et couvre trois départements&nbsp;: le Gers, les Landes et le Lot-et-Garonne. Les vignerons du floc-de-gascogne ont mis en place un principe qui n'est ni une délimitation parcellaire telle qu'on la rencontre pour les vins, ni une simple aire géographique telle qu'on la rencontre pour les eaux-de-vie. C'est le principe des listes parcellaires approuvées annuellement par l'INAO.",
        rawWindow: "À boire jeune.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3476F400-E028-4559-9132-D857564CDB85`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`22A430E7-15DC-4D5A-BF13-445A78CE9084`,
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`,
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `CF942974-4679-4F2E-9A82-D67E915B6A1A` = DefaultWineAppellation(
        id: UUID(uuidString: "CF942974-4679-4F2E-9A82-D67E915B6A1A")!,
        name: "Tursan",
        description: "Vignoble d'Aliénor d'Aquitaine, Tursan s'inscrit dans le prolongement du Madirannais. Il s'étend sur les coteaux de l'est de la Chalosse, dans les cantons d'Aire-sur-Adour et de Geaune. Comme tous les vignobles de la région, Tursan a très tôt exporté ses vins&nbsp;: au XII e&nbsp;siècle, ils sont vendus à Londres, ainsi qu'à Cordoue et à Séville?; entre les XV e et XVIII e&nbsp;siècles, ils s'imposent sur les marchés hanséatiques. Les vins blancs doivent leur originalité à un cépage local, le baroque, mais les vins rouges et rosés présentent également un indéniable caractère. AOVDQS depuis 1958, tursan est devenu AOC en 2011.",
        rawWindow: "Rouge : 4 à 8 ans.\n Blanc et rosé : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28520607-8AE5-42F9-893A-AC2C8F2E7F3D`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `13631626-F132-4735-9180-F9ACA30323BD` = DefaultWineAppellation(
        id: UUID(uuidString: "13631626-F132-4735-9180-F9ACA30323BD")!,
        name: "Saint-Mont",
        description: "Le vignoble de Saint-Mont prolonge vers le nord et l'est celui de **Madiran**, sur les deux rives de l'Adour, se déployant sur 46&nbsp;communes au sud-est du département du Gers. Il tire son nom et son origine d'une abbaye bénédictine fondée au XI e&nbsp;siècle sur le chemin de Saint-Jacques de Compostelle. Les vins de Saint-Mont furent exportés par l'Adour dès les XIV e et XV e&nbsp;siècles. Installés sur les coteaux du Piémont pyrénéen, les ceps occupent les meilleures situations, composant avec le maïs et d'autres cultures. Soumis à un climat océanique humide, ils bénéficient d'un été et d'un début d'automne chauds et secs. Le saint-mont privilégie les cépages autochtones&nbsp;: en rouge, le tannat est la variété principale (50&nbsp;% des assemblages), toujours associée au **fer-servadou** et au **cabernet-sauvignon**; en blanc, c'est le **gros manseng**, toujours marié à l'**arrufiac** et au petit **courbu**. L'accession des vins à l'AOVDQS en 1981 (sous le nom de côtes-de-saint-mont), puis à l'AOC trente ans plus tard consacre le renouveau de ce vignoble qui fournit des vins bien typés, dans les trois couleurs.",
        rawWindow: "Rouge : 4 à 8 ans.\nBlanc et rosé : à boire jeunes.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`6E682B09-BA9C-48D1-809A-32857EAB5FFC`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `6E1338E7-5072-454B-9126-76C8489858A0` = DefaultWineAppellation(
        id: UUID(uuidString: "6E1338E7-5072-454B-9126-76C8489858A0")!,
        name: "Madiran",
        description: "Produit non loin de l'Adour, à cheval sur les départements du Gers, des Hautes-Pyrénées et des Pyrénées-Atlantiques, le madiran a joui très tôt d'une excellente réputation&nbsp;: il fut longtemps le vin des pèlerins de Saint-Jacques-de-Compostelle. Son cépage dominant est le tannat qui s'exprime avec force sur un terroir argilo-calcaire et siliceux mêlé de fines graves, ce qui explique la puissance et la charpente de ce vin de bonne garde. En vieillissant, pourtant, le madiran devient soyeux et caresse le palais.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8A6DEE91-8D35-449B-AD30-C348878FBA1B`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `9EF323B0-5E0B-4665-9435-9A5CFB4ABA20` = DefaultWineAppellation(
        id: UUID(uuidString: "9EF323B0-5E0B-4665-9435-9A5CFB4ABA20")!,
        name: "Jurançon",
        description: "**Royal, le jurançon est entré dans l'histoire lors du baptême du futur Henri IV, auquel on aurait humecté les lèvres de quelques gouttes de ce cru**. Ce vin que Colette qualifiait de «&nbsp;prince enflammé, impérieux&nbsp;» ne peut cacher son origine montagnarde. Perchées sur un balcon faisant face à la chaîne pyrénéenne, les vignes bénéficient de la protection du pic du Midi d'Ossau. **Les cépages locaux (petit manseng) marquent la personnalité de vins mœlleux, liquoreux ou secs**.",
        rawWindow: "Moelleux : jusqu’à 20 ans.\nSec : 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6E682B09-BA9C-48D1-809A-32857EAB5FFC`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `5EE4589E-5A83-4AE6-A434-6708754BFDDA` = DefaultWineAppellation(
        id: UUID(uuidString: "5EE4589E-5A83-4AE6-A434-6708754BFDDA")!,
        name: "Pacherenc-du-Vic-Bilh",
        description: "Le mode de conduite de la vigne – taille haute, liée à des piquets alignés – explique le nom de pacherenc, dérivé du gascon pachet-en-rène, «&nbsp;piquets en rangs&nbsp;». **Dans le pays béarnais, le pacherenc-du-vic-bilh partage son aire d'appellation avec le madiran**, entre Pau, Vic-en-Bigorre et Riscle. C**e vin blanc est issu de cépages locaux parfois complétés par des variétés bordelaises**. Selon les conditions climatiques, il peut être sec ou moelleux. Sec, il présente un caractère fruité qui invite à le boire jeune. Moelleux, il mérite d'être attendu une dizaine d'années.",
        rawWindow: "Sec : à boire jeune.\nMoelleux : jusqu’à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6E682B09-BA9C-48D1-809A-32857EAB5FFC`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`C0CD7187-36C6-40EB-9749-899B52985CF3`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `BA1C46F7-51CD-4AA0-9C04-16FC27054514` = DefaultWineAppellation(
        id: UUID(uuidString: "BA1C46F7-51CD-4AA0-9C04-16FC27054514")!,
        name: "Irouléguy",
        description: "Le vignoble du bout du monde... **Irouléguy est aujourd'hui l'une des plus petites aires viticoles de France**, au nord du Pays basque, éparpillé dans la montagne entre les communes d'Irouléguy, de Saint-Étienne-de-Baïgorry et d'Anhaux. Il est l'héritier d'une histoire riche, liée aux pèlerins de Saint-Jacques-de-Compostelle qui, au Moyen Âge, passaient par Saint-Jean-Pied-de-Port et Roncevaux. **Rouge, l'irouléguy est un bon vin de garde**; **rosé, il est nerveux et aromatique**; **blanc, frais et fruité**.",
        rawWindow: "Rouge : 3 à 6 ans.\nRosé : à boire jeune.\nBlanc : 1 à 3 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`21ED899E-C966-43D3-AAD4-D864802D51B8`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`6E682B09-BA9C-48D1-809A-32857EAB5FFC`,
            DefaultGrapeVariety.`0B6DD0F2-392A-4E85-B4B9-230991990369`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`
        ],
        region: DefaultWineRegion.`09655B84-A485-4931-8C32-B0EF4D79F00C`
    )

    static let `3F03439C-0CB3-4142-B51E-C72169A4BCB9` = DefaultWineAppellation(
        id: UUID(uuidString: "3F03439C-0CB3-4142-B51E-C72169A4BCB9")!,
        name: "Savennières-Coulée-de-Serrant",
        description: "Au sein du vignoble de savennières, la coulée-de-serrant est devenue l'AOC la plus réputée d'Anjou. L'aire est située sur un éperon rocheux s'avançant sur la Loire, au pied duquel fut construite une forteresse au Moyen Âge. La Coulée de Serrant comprend trois parcelles&nbsp;: le Grand Clos de la Coulée, sur le flanc ouest du coteau de Chambourreau?; le Clos du Château aux pentes symétriques à celles du Grand Clos, et les Plantes. Ses vins blancs secs de longue garde sont produits par le seul domaine de La Coulée de Serrant, travaillé en biodynamie.",
        rawWindow: "10 à 20 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `CEFB0680-730F-46FD-A969-99A3D8AB8ED0` = DefaultWineAppellation(
        id: UUID(uuidString: "CEFB0680-730F-46FD-A969-99A3D8AB8ED0")!,
        name: "Savennières-Roche-aux-Moines",
        description: "Enclavé dans le vignoble de Savennières, ce lieu-dit fut appelé Roche-aux-Moines après sa donation aux moines de Saint-Nicolas en 1285. Au cours de l'Histoire, il fut diversement rebaptisé&nbsp;: Roche-au-Duc lors de son acquisition en 1370 par le duc Louis II d'Anjou, Roche-de-Serrant en 1481 par la volonté de Louis&nbsp;XI de récompenser son chambellan Perthus de Brie, seigneur de Serrant, puis Roche Vineuse à la Révolution. Les souterrains sur lesquels est bâti le château servent aujourd'hui à conserver les vins.",
        rawWindow: "10 à 20 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `4433D322-AE75-4F07-AA4A-410D7C5CA038` = DefaultWineAppellation(
        id: UUID(uuidString: "4433D322-AE75-4F07-AA4A-410D7C5CA038")!,
        name: "Savennières",
        description: "Savennières possède une place à part dans la production des grands vins blancs d'Anjou&nbsp;: il s'agit d'un vin blanc sec. Son origine remonte aux vignes médiévales, alors que les vignobles de vins liquoreux n'apparurent en tant que région de production qu'au XVII e&nbsp;siècle, sous l'influence du négoce hollandais. L'aire d'appellation se situe sur la rive droite de la Loire, à une quinzaine de kilomètres au sud-sud-ouest d'Angers. Elle occupe des coteaux abrités aux sols schisteux.",
        rawWindow: "10 à 20 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `6EC7CE1E-9345-466E-864F-C1BC572ADC4A` = DefaultWineAppellation(
        id: UUID(uuidString: "6EC7CE1E-9345-466E-864F-C1BC572ADC4A")!,
        name: "Cabernet-D'Anjou",
        description: "L'aire d'appellation cabernet-d'anjou se confond avec celle de **l'AOC anjou**, mais elle est réservée aux vins rosés. Ceux-ci sont essentiellement produits dans le département du Maine-et-Loire, au sud d'Angers. Les cabernets-d'anjou sont obtenus à partir des cépages **cabernet franc** et **cabernet-sauvignon**. Traditionnellement peu colorés car issus de pressurage direct, ce sont des rosés demi-secs et bien fruités. Originaux par leur finesse, ils ont gagné de très nombreux consommateurs si bien que l'AOC, en volume, représente la deuxième appellation de rosé en France. Consommés jeunes, ces vins n'en sont pas moins aptes au vieillissement dans les meilleurs millésimes. Ceux qui naissent sur les faluns de la région de Tigné et dans le Layon sont les plus réputés.",
        rawWindow: "1 à 2 ans (5 à 10 ans pour les plus moelleux).\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `301378E2-B67B-47F8-81C7-F5F82A1203DD` = DefaultWineAppellation(
        id: UUID(uuidString: "301378E2-B67B-47F8-81C7-F5F82A1203DD")!,
        name: "Anjou-Coteaux-de-la-Loire",
        description: "De part et d'autre de la Loire, à l'ouest de l'AOC savennières, l'appellation anjou-coteaux-de-la-loire est réservée à des vins blancs liquoreux, issus du seul **chenin blanc** et produits en volumes confidentiels. Le raisin, soigneusement récolté par tries successives, ne provient que des schistes et calcaires de Montjean. Ce terroir peu profond se réchauffe rapidement, favorisant ainsi la maturation d'un cépage semi-tardif.",
        rawWindow: "5 à 20 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `3BB976D5-A1B7-4342-AC63-E1DE109C00C6` = DefaultWineAppellation(
        id: UUID(uuidString: "3BB976D5-A1B7-4342-AC63-E1DE109C00C6")!,
        name: "Anjou-Gamay",
        description: "Parmi la grande diversité des vins d'Anjou, l'AOC anjou-gamay est un vin rouge produit à partir du cépage gamay noir. Issu des sols les plus schisteux de son aire de production, c'est un excellent vin de carafe, charmeur dans sa prime jeunesse, dont le fruité perdure agréablement lors de la dégustation.",
        rawWindow: "1 an.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `7C444C1F-BE2B-44BD-AE7C-13BAF712A804` = DefaultWineAppellation(
        id: UUID(uuidString: "7C444C1F-BE2B-44BD-AE7C-13BAF712A804")!,
        name: "Anjou-Villages",
        description: "L'appellation anjou-villages a été délimitée dans la partie occidentale de l'AOC Anjou. Elle correspond à une sélection de terrains sur quarante-six communes : ont été retenues les situations en coteau, bien abritées des influences humides du proche océan par les reliefs des Mauges et du Choletais et par leur exposition?; ainsi que les sols se réchauffant facilement, favorisant une alimentation en eau régulière et une maturation précoce, développés sur schistes pour la plupart. L'aire d'appellation recouvre le substrat de roches anciennes correspondant au Massif armoricain. Elle englobe notamment celle des **coteaux-du-layon**, de l'**anjou-coteaux-de-la-loire** et du **savennières**, sur les deux rives de la Loire. Le cépage traditionnel des vins rouges de l'Anjou est le **cabernet franc**, appelé breton car il fut importé dès l'époque des Plantagenêts par les portes de la Bretagne. Associé ou non au **cabernet-sauvignon**, originaire du Sud-Ouest, il donne des vins de semi-garde.",
        rawWindow: "2 à 3 ans (10 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `CF67F19B-550E-4D26-87A3-AB108D4B0789` = DefaultWineAppellation(
        id: UUID(uuidString: "CF67F19B-550E-4D26-87A3-AB108D4B0789")!,
        name: "Rosé-D'Anjou",
        description: "**La vallée de la Loire **ne compte pas moins de cinq appellations réservées aux vins rosés, qui ont l'Anjou pour région de prédilection**.** L'AOC rosé-d'anjou, comme le cabernet-d'anjou, est produite essentiellement dans le Maine-et-Loire, dans les limites de **l'AOC anjou**. La différence entre ces deux rosés tient aux cépages qui peuvent entrer dans leur composition. Le rosé-d'anjou peut incorporer toutes les variétés rouges de la région, notamment le **grolleau**, qui tient un place importante. Obtenu après un pressurage direct des vendanges ou une macération de quelques heures, c'est un vin agréable par sa fraîcheur et son fruité.",
        rawWindow: "À boire jeune.\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `AE5D676A-456C-4082-B841-8C50EAB2F254` = DefaultWineAppellation(
        id: UUID(uuidString: "AE5D676A-456C-4082-B841-8C50EAB2F254")!,
        name: "Coteaux-de-L'Aubance",
        description: "**L'AOC Coteaux-de-l'Aubance,** produit de magnifiques **vins blancs** dans la **vallée de la Loire**, témoignant de la **richesse****viticole** de cette région. Nichée entre les **collines des coteaux de l'Aubance** et les rives majestueuses de la **Loire**, elle appartient à l'enclave faiblement arrosée de **l'Anjou viticole,** protégée des **influences océaniques par les reliefs plus élevés du Choletais et des Mauges**. **L'AOC Coteaux-de-l'Aubance** produit des **vins liquoreux** qui peuvent porter la mention «&nbsp;**sélection de grains nobles**&nbsp;» lorsqu'ils sont issus de vendanges riches d'**au moins 234&nbsp;g/l de sucres naturels.**\n\n&nbsp;## **Histoire**\n\n&nbsp;\n\nLes **Coteaux-de-l'Aubance** ont une **histoire viticole longue et prestigieuse.** Depuis des **siècles**, les vignerons de la région ont cultivé **avec passion les cépages dans les domaines viticoles de renom**. Grâce à leur **savoir-faire ancestral** et à **l'influence unique du terroir de l'Anjou,** ils ont su créer des** vins blancs d'une élégance incomparable**. L'origine de l'appellation remonte au **Moyen Âge,** lorsque les moines **bénédictins** ont commencé à cultiver la vigne **sur les coteaux** qui surplombent la **vallée de l'Aubance.** Ces religieux visionnaires ont reconnu le **potentiel****unique** de ce **terroir** et ont consacré leurs **efforts** à la **culture des cépages blancs.** Au **XIXe****siècle**, les **Coteaux-de-l'Aubance** ont gagné en **renommée** et ont commencé à être **exportés** vers de nombreux pays étrangers. En **1950**, l'appellation Coteaux-de-l'Aubance a été** officiellement reconnue et réglementée,** marquant ainsi une** étape importante dans l'histoire de ces vins**.\n\n&nbsp;## **Spécificité des Coteaux-de-l'Aubance**\n\n&nbsp;### Cépages\n\n&nbsp;\n\nSur l'AOC **Coteaux-de-l'Aubance**, les vignerons cultivent principalement le cépage emblématique** Chenin Blanc**, également connu sous le nom de **Pineau de la Loire**. Ce cépage noble s'adapte parfaitement au terroir et confère aux vins des **Coteaux-de-l'Aubance** leur **finesse**, leur **structure** et leur **potentiel de vieillissement.&nbsp;**\n\n&nbsp;### Sols &amp; Climat\n\n&nbsp;\n\nLes **Coteaux-de-l'Aubance** doivent leur **caractère unique** à plusieurs facteurs spécifiques à leur terroir. Situés dans la région de **l'Anjou**, ces vins bénéficient d'un **climat idéal pour la culture des cépages blancs.** Les **sols peu profonds sur schistes** offrent un **environnement****propice****à l'épanouissement des raisins,** leur conférant une **richesse aromatique exceptionnelle**. Les domaines viticoles de renom de la région s'attachent à préserver et à transmettre ce **savoir-faire ancestral**, garantissant ainsi la **qualité** et **l'authenticité** des **Coteaux-de-l'Aubance.**",
        rawWindow: "5 à 20 ans (sans limite pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `7118E168-AB7B-4D00-90C7-FC427CF6D290` = DefaultWineAppellation(
        id: UUID(uuidString: "7118E168-AB7B-4D00-90C7-FC427CF6D290")!,
        name: "Anjou",
        description: "L'Anjou présente deux grands ensembles géologiques bien distincts. À l'est, les terrains sédimentaires de la bordure sud-ouest du Bassin parisien, caractérisés par les terres blanches provenant du tuffeau, constituent l'Anjou blanc et correspondent au Saumurois. À l'ouest, les terrains schisteux de la bordure orientale du massif Armoricain forment l'Anjou noir, où sont produits non seulement des vins rouges mais aussi des vins blancs secs et liquoreux, élaborés à partir du cépage chenin, ainsi que quelques rares mousseux. Ce sont des vins agréables qui peuvent être consommés dès mars-avril et qui ont suffisamment de caractère pour attendre trois ans en cave.",
        rawWindow: "À boire jeune ou dans les 3 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `3C70E519-7238-4808-9E88-3CDB8EF85CEF` = DefaultWineAppellation(
        id: UUID(uuidString: "3C70E519-7238-4808-9E88-3CDB8EF85CEF")!,
        name: "Bonnezeaux",
        description: "Le village de Thouarcé, sur la rive gauche de la Loire, et non loin du village de Brissac, abrite l'un des plus célèbres crus des coteaux du Layon&nbsp;: le bonnezeaux. Le vignoble est implanté sur des coteaux aux pentes abruptes d'exposition sud-ouest, dont les sols superficiels sont riches en éléments grossiers. L'action desséchante des vents dominants et l'alimentation hydrique très faible permettent une concentration des baies par flétrissement sur souche. L'originalité de ce cru, «&nbsp;l'inimitable vin de dessert&nbsp;» disait le Dr Maisonneuve en 1925, est liée à ce type de surmaturation. Les vins acquièrent une grande finesse et une belle complexité.",
        rawWindow: "5 à 20 ans (sans limite pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `876D945C-4880-42B8-B36D-54C03A7C6152` = DefaultWineAppellation(
        id: UUID(uuidString: "876D945C-4880-42B8-B36D-54C03A7C6152")!,
        name: "Coteaux-du-Layon",
        description: "Le Layon est un affluent de la Loire qui prend sa source au sud du Maine-et-Loire, à la limite des Deux-Sèvres. Vingt-sept communes constituent l'aire géographique de l'AOC, parmi lesquelles on distingue six communes réputées, dont le nom peut compléter celui de l'appellation (Faye-d'Anjou, Beaulieu-sur-Layon, Rochefort-sur-Loire, Saint-Aubin-de-Luigné, Saint-Lambert-du-Lattay et Rablay-sur-Layon). Le Layon est à l'abri de l'humidité océanique grâce aux reliefs du Choletais et des Mauges. Les vignes y sont implantées sur des sols peu profonds, caillouteux, qui se réchauffent facilement. Les vins sont issus de vendanges très riches en sucre, obtenues par tries successives et manuelles de raisins concentrés sous l'action ou non de la pourriture noble. Ils entrent dans la catégorie des liquoreux.",
        rawWindow: "Plus de 40 ans pour les plus grands millésimes.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `04C6EC44-A153-4694-BCDF-54A02433C5AB` = DefaultWineAppellation(
        id: UUID(uuidString: "04C6EC44-A153-4694-BCDF-54A02433C5AB")!,
        name: "Quarts-de-Chaume",
        description: "**L'une des grandes appellations de vins liquoreux de la Loire**. Rattaché à Rochefort-sur-Loire, le vignoble domine un méandre du Layon, entre Beaulieu-sur-Layon et Saint-Aubin-de-Luigné, couvrant le bas d'un coteau abrupt, exposé plein sud. L'AOC doit son nom au fait qu'au Moyen Âge, le seigneur du lieu s'en réservait le quart de la production. Les sols, minces et caillouteux, résultent de l'érosion de schistes très anciens. Ces formations sont favorables aux vieilles vignes de **chenin** qui donnent une production faible mais de grande qualité. Le microclimat, bien abrité des vents les plus frais et les plus humides, est favorable à la surmaturation. Lorsque les automnes sont brumeux, la pourriture noble se développe. Les années sèches, le caractère liquoreux des vins résulte du passerillage des baies sur souche. Dans tous les cas, les quarts-de-chaume sont des vins d'une richesse exceptionnelle en sucres. Depuis 2011, l'étiquette des quarts-de-chaume peut afficher la mention «&nbsp;grand cru&nbsp;».",
        rawWindow: "5 à 20 ans (sans limite pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `6958F569-85EE-470D-B776-D847D17B945E` = DefaultWineAppellation(
        id: UUID(uuidString: "6958F569-85EE-470D-B776-D847D17B945E")!,
        name: "Cabernet-de-Saumur",
        description: "Le cabernet-de-saumur est un vin rosé suave. Sa composition (**cabernet franc** et **cabernet-sauvignon**) et sa vinification par pressurage direct sans foulage le rapprochent du **cabernet-d'anjou**, mais il est produit en volumes beaucoup plus faibles, même si son aire d'appellation, identique à celle du **saumur**, s'étend sur trente-huit communes. Le vignoble est implanté sur les terres blanches crayeuses du Saumurois, les célèbres sols de craie tuffeau qui confèrent de la finesse aux vins. Sec ou demi-sec, le cabernet-de-saumur est moins riche en sucres que le cabernet-d'anjou&nbsp;: 10&nbsp;g par litre maximum, alors qu'il s'agit d'un minimum pour le second. C'est un rosé frais et léger, d'une belle longueur.",
        rawWindow: "1 à 2 ans (5 ans et plus pour les plus moelleux).\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `50A1B2AF-CC82-498C-A599-B6A4BDC8F973` = DefaultWineAppellation(
        id: UUID(uuidString: "50A1B2AF-CC82-498C-A599-B6A4BDC8F973")!,
        name: "Saumur",
        description: "Centre de la viticulture angevine, Saumur est la grande place de négoce des vins de Loire depuis le XVII e&nbsp;siècle. Dispersé en îlots, son vignoble repose sur les célèbres sols de craie tuffeau de l'Anjou blanc, par opposition aux terres sombres de l'Anjou noir. Si la région du Saumurois est traditionnellement productrice de vins blancs et a acquis sa notoriété dès le Moyen Âge grâce à ce type de vin, ce sont aujourd'hui les vins rouges qui font sa renommée. Toutefois, qu'ils soient rouges, rosés ou blancs, tranquilles ou effervescents, les vins ont en commun souplesse et fraîcheur. Par leur délicatesse, ils témoignent de cette douceur de vivre angevine proverbiale.",
        rawWindow: "Rouge : 3 à 5 ans (jusqu’à 10 ans pour les grands millésimes).\n Blanc et effervescents : 2 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `653744E5-A0A3-413C-844B-30B93CAD336F` = DefaultWineAppellation(
        id: UUID(uuidString: "653744E5-A0A3-413C-844B-30B93CAD336F")!,
        name: "Coteaux-de-Saumur",
        description: "Délimitée sur la rive gauche de la Loire, au sud de **Saumur**, l'appellation, réservée aux vins moelleux, couvre 31&nbsp;communes, situées principalement dans le Maine-et-Loire, avec des prolongements dans les départements des Deux-Sèvres et de la Vienne. Le vignoble est installé sur les terres blanches de tuffeau, sur les coteaux qui bordent la Loire et l'un de ses affluents, le Thouet. Relativement abrité de l'humidité, assez venté, il jouit d'une exposition remarquable. Dans ces conditions, la vendange, récoltée à surmaturité, présente des baies concentrées, parfois atteintes par la pourriture noble. Les coteaux-de-saumur, équivalents en Saumurois des **coteaux-du-layon** en Anjou, sont élaborés à partir du **chenin**&nbsp;pur, récolté manuellement par tries successives. Ce sont des vins élégants, à la fois onctueux et vifs, pouvant se garder jusqu'à plusieurs décennies.",
        rawWindow: "10 à 15 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `0FC0BA71-1832-4F7A-B963-2AED8B8B983A` = DefaultWineAppellation(
        id: UUID(uuidString: "0FC0BA71-1832-4F7A-B963-2AED8B8B983A")!,
        name: "Anjou-Villages-Brissac",
        description: "Les dix communes constituant l'aire géographique de l'AOC anjou-villages-brissac forment un plateau s'inclinant en pente douce vers la Loire, limité au nord par ce fleuve et, au sud, par les coteaux abrupts du Layon. Le terroir de cette appellation est l'Anjou noir avec ces terres sombres, schisteuses et caillouteuses du Massif armoricain. Y naissent des vins rouges denses qui ressemblent aux paysages qui les voient naître.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `B490CE80-82D9-4ECA-8DB4-9C1F51C9EF61` = DefaultWineAppellation(
        id: UUID(uuidString: "B490CE80-82D9-4ECA-8DB4-9C1F51C9EF61")!,
        name: "Chaume",
        description: "Petite enclave dans les coteaux-du-layon, l'AOC chaume a été reconnue en 2007, mais son décret a finalement été annulé par le Conseil d'État en 2009. Les parcelles ont été délimitées autour du hameau de Chaume sur le territoire de Rochefort-sur-Loire. Les chaume sont des vins liquoreux: leur teneur en sucres résiduels ne peut être inférieure à 68&nbsp;g/l et la richesse des vendanges est au moins égale à 272&nbsp;g/l, soit 16&nbsp;% vol.Petite enclave dans les coteaux-du-layon, l'AOC chaume a été reconnue en 2007, mais son décret a finalement été annulé par le Conseil d'État en 2009. Les parcelles ont été délimitées autour du hameau de Chaume sur le territoire de Rochefort-sur-Loire. Les chaume sont des vins liquoreux: leur teneur en sucres résiduels ne peut être inférieure à 68&nbsp;g/l et la richesse des vendanges est au moins égale à 272&nbsp;g/l, soit 16&nbsp;% vol.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\nBlanc : 1 à 2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `057E9E52-0230-4598-B533-4DC2E5A163EE` = DefaultWineAppellation(
        id: UUID(uuidString: "057E9E52-0230-4598-B533-4DC2E5A163EE")!,
        name: "Saumur-Champigny",
        description: "Dans le Maine-et-Loire, saumur-champigny se trouve à proximité des aires de **chinon**, **bourgueil** et **saint-nicolas-de-bourgueil**. Son vignoble s'étend sur les coteaux calcaires de la rive gauche de la Loire, autour de la ville de Saumur. L'originalité du terroir de Champigny est de produire des vins rouges denses, charnus et élégants, aux tanins intenses mais souples. Produits dans neufs communes, à partir du **cabernet franc** (ou breton), parfois complété de **cabernet-sauvignon**, mûris dans des caves de tuffeau, les vins rouges de Champigny sont connus depuis plusieurs siècles mais leur expansion est récente.",
        rawWindow: "10 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`EF4A71C2-0EA4-406B-8FAA-BC6B344F194E`
    )

    static let `AE6D8CBF-134C-4B5F-96D0-9CB805F168FE` = DefaultWineAppellation(
        id: UUID(uuidString: "AE6D8CBF-134C-4B5F-96D0-9CB805F168FE")!,
        name: "Coteaux-D'Ancenis",
        description: "Le vignoble des coteaux-d'ancenis, réparti sur vingt-sept communes, est situé de part et d'autre de la Loire, à l'est de Nantes. Voisin des terroirs du muscadet, il s'enracine dans les schistes et les gneiss. L'aire bénéficie d'un climat tempéré, à la fois plus ensoleillé et moins venteux que celui de la Bretagne. Les coteaux-d'ancenis se déclinent en vins rouges, rosés et&nbsp;vins&nbsp;blanc ( essentiellement des vins moëlleux, plus confidentiels) . Ils sont issus de cépages purs&nbsp;: **gamay** et **malvoisie**. AOVDQS depuis 1954, les coteaux-d'ancenis sont devenus AOC en 2011.",
        rawWindow: "Rouge : 2 à 3 ans.\nRosé : à boire jeune.\nBlanc : 2 à 5 ans.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `5CC9B807-E4D3-47FE-904B-F09F75961A43` = DefaultWineAppellation(
        id: UUID(uuidString: "5CC9B807-E4D3-47FE-904B-F09F75961A43")!,
        name: "Muscadet-Coteaux-de-la-Loire",
        description: "L'aire d'appellation des muscadets-coteaux-de-la-loire est la plus orientale des appellations sous-régionales du **muscadet**, limitrophe de l'Anjou viticole où **le cépage melon** fait place au **chenin**. Elle est délimitée sur les coteaux assez abrupts qui bordent la Loire et ses affluents en amont de la ville de Nantes, tandis que les plateaux sont voués à l'élevage. L'AOC s'étend sur 22&nbsp;communes des deux rives du fleuve, en aval d'Ingrandes, qui marque l'entrée dans l'Anjou, jusqu'à Carquefou, aux portes de Nantes. Ses vins étaient à l'origine expédiés par Ancenis, autrefois port actif. Les rives de la Loire bénéficient d'un climat océanique particulièrement doux, grâce au rôle régulateur du fleuve, qui propage l'influence maritime à l'intérieur des terres. Les précipitations y sont nettement plus faibles que sur le plateau. Développés sur un sous-sol composé de roches métamorphiques (micaschistes, gneiss et schistes), les sols, superficiels, sableux et caillouteux, sont bien drainés et se réchauffent facilement. Les vins de ce secteur sont particulièrement élégants et d'une grande vivacité, mêlant les fleurs à la pierre à fusil. L'élevage sur lie, souvent pratiqué, leur confère complexité aromatique, ampleur et rondeur.",
        rawWindow: "2 à 5 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `EB1771B9-3E75-4D22-8247-2A1B9CD4B2CC` = DefaultWineAppellation(
        id: UUID(uuidString: "EB1771B9-3E75-4D22-8247-2A1B9CD4B2CC")!,
        name: "Gros-Plant-du-Pays-Nantais",
        description: "**Compagnon idéal des huîtres, le gros-plant-du-pays-nantais est un vin blanc sec et léger**, parfois élevé sur lie, ce qui accentue sa fraîcheur, sa finesse et son bouquet. **Il est issu d'un cépage unique d'origine charentaise**, utilisé pour le cognac&nbsp;: **la folle blanche**, **appelée ici gros-plant**. L'aire géographique de l'AOC gros-plant-du-pays-nantais se superpose presque à celle des AOC du muscadet. Le vignoble s'étend sur quatre-vingt-douze communes essentiellement situées au sud de la Loire à hauteur de Nantes. En AOVDQS depuis 1954, ce vignoble a accédé à l'AOC en 2011.",
        rawWindow: "À boire jeune.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`22A430E7-15DC-4D5A-BF13-445A78CE9084`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `36551A5F-D8E2-4383-9D7F-E22F3B872545` = DefaultWineAppellation(
        id: UUID(uuidString: "36551A5F-D8E2-4383-9D7F-E22F3B872545")!,
        name: "Fiefs-Vendéens",
        description: "AOVDQS depuis 1984, les fiefs-vendéens ont accédé à l'AOC en 2011. L'appellation se décompose en cinq entités distinctes&nbsp;: Brem-sur-Mer, sur le littoral atlantique au nord et au sud des Sables-d'Olonne, terre de vins blancs secs et iodés?; Mareuil, au sud-est de La Roche-sur-Yon, pays des vins rosés et rouges tout en finesse?; puis Pissotte et Vix respectivement au nord et au sud de Fontenay-le-Comte, aux vins plus charnus&nbsp;; et la dernière venue, Chantonnay, aux portes du bocage vendéen. Même si leurs terroirs sont éloignés de la Loire, les fiefs-vendéens ont l'esprit, le friand, la légèreté et le fruité naturels des vins ligériens.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`,
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`9EEE9160-C4BD-4F65-BDD2-0EFFF8808711`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `706072C5-CEC0-4503-926A-3C3A961F18E6` = DefaultWineAppellation(
        id: UUID(uuidString: "706072C5-CEC0-4503-926A-3C3A961F18E6")!,
        name: "Muscadet-Côtes-de-Grand-Lieu",
        description: "Le petit vignoble de l'AOC muscadet-côtes-de-grandlieu s'étend au sud-ouest de Nantes sur dix-neuf communes à la périphérie du lac de Grandlieu, en Loire-­Atlantique et en Vendée. Dernière-née des appellations d'origine sous-­régionales de **muscadet**, c'est la plus occidentale et la plus proche de l'océan Atlantique; grâce à cette proximité et aux eaux du lac, elle bénéficie d'un climat océanique très doux, où les gels sont aussi rares que les épisodes caniculaires. Le cépage melon y fait preuve d'une grande précocité. L'aire d'appellation a fait l'objet d'une délimitation particulièrement sélective, sur les coteaux ceinturant le lac et longeant les cours d'eau qui l'alimentent****; à la vigne ont été réservées les meilleures situations dans un secteur dominé par l'élevage et les autres cultures. Les sols de sables et de galets, issus de roches métamorphiques tels que gneiss et micaschistes, donnent naissance à des vins secs alliant finesse et fraîcheur, comme les autres muscadets. Grâce à la douceur du climat, ceux-ci sont épanouis dès leur jeune âge et l'océan leur lègue une touche iodée. L'élaboration sur lie, majoritaire, renforce la fraîcheur, le fruité et la complexité des vins.",
        rawWindow: "2 à 5 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `9778A629-DD81-4FF7-9C0D-D8D44BED27F6` = DefaultWineAppellation(
        id: UUID(uuidString: "9778A629-DD81-4FF7-9C0D-D8D44BED27F6")!,
        name: "Muscadet-Sèvre-et-Maine",
        description: "**Des trois appellations sous-régionales que compte le vignoble du Muscadet, l'AOC muscadet-sèvre-et-maine est l'une des plus anciennes et la plus importante en termes de surface et de volume de production**. Délimitée principalement dans le département de Loire-Atlantique, l'AOC s'étend sur vingt-trois communes, réparties sur les pentes des vallées de la Sèvre nantaise et de la Maine, ainsi que sur la rive gauche de la Loire et la bordure du marais de Goulaine. Installé sur des sols très variés, le vignoble fournit des vins assez charpentés, de garde dans les grands millésimes, souvent élevés sur lie. Une hiérarchisation du vignoble a été consacrée en 2011; à l'intérieur de l'aire d'appellation, trois dénominations géographiques ont été définies&nbsp;: Clisson, Gorges et Le Pallet; ces trois crus ont été délimités sur le territoire de plusieurs communes ou parties de communes sur des critères géologiques et microclimatiques&nbsp;: Gorges se caractérise par des argiles formés par l'altération des gabbros, Clisson par des sables d'origine granitique, Le Pallet par des sols caillouteux. Les vins qui y naissent ont des caractères différents. Tous sont des muscadets haut de gamme soumis à un cahier des charges bien plus restrictif que celui de l'appellation sous-régionale. Les rendements sont nettement inférieurs, et surtout, l'élevage sur lie est bien plus long&nbsp;: quatorze mois pour Le Pallet, dix-huit mois pour Clisson et Gorges, la commercialisation ne pouvant débuter que deux mois après la mise en bouteille.",
        rawWindow: "2 à 5 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `2E621D7E-57DB-41DD-BFAB-BB7442C4B4F2` = DefaultWineAppellation(
        id: UUID(uuidString: "2E621D7E-57DB-41DD-BFAB-BB7442C4B4F2")!,
        name: "Muscadet",
        description: "**L'AOC&nbsp;Muscadet**, c'est l'incarnation même de la&nbsp;**région nantaise**&nbsp;en France. Plongeons dans son&nbsp;**histoire**&nbsp;fascinante, découvrons ses&nbsp;**caractéristiques uniques**&nbsp;et explorons les&nbsp;**secrets de sa production**. Les vins de l'AOC muscadet sont très appréciés des amateurs de vin tant ils se marient avec une multitude de mets et d'occasions.&nbsp;## **Histoire du vin de Muscadet**\n\n&nbsp;\n\nL'appellation Muscadet a la particularité de tirer son nom du cépage plutôt que&nbsp;de la&nbsp;région géographique&nbsp;ou historique.&nbsp;Le nom de cette appellation&nbsp;remonterait au Moyen-Âge, et rappelle les vins de muscat venus de Chypre, assez réputés auprès des cours féodales. Mais le Muscadet est en réalité issu d'un cépage bourguignon :&nbsp;**le melon de Bourgogne**. Au fil des siècles, ce cépage s'est imposé dans la région nantaise suite au&nbsp;grand gel de 1709,&nbsp;il avait&nbsp;quasiment disparu de sa région d'origine.&nbsp;Précoce et résistant au froid, le&nbsp;**melon de Bourgogne&nbsp;**a fini par détrôner&nbsp;la folle blanche, cépage qui fournissait de gros volumes de vins légers recherchés au XVII e&nbsp;siècle par les négociants hollandais pour la distillation, et qui produit aujourd'hui le&nbsp;gros-plant-du-pays-nantais.**&nbsp;Jusqu'au XVIe siècle**, cette région, initialement rattachée à la Bretagne, s'est tournée vers la&nbsp;**production de vins blancs.**&nbsp;\n\n&nbsp;### **Climat&nbsp;**\n\nLe Muscadet prospère dans un&nbsp;**climat océanique**&nbsp;caractérisé par des&nbsp;**amplitudes thermiques annuelles faibles**&nbsp;et un&nbsp;**ensoleillement estival généreux.**&nbsp;Les vignes sont exposées au&nbsp;**vent marin,**&nbsp;ce qui favorise un**&nbsp;démarrage précoce de la végétation**. La modération des températures estivales préserve la fraîcheur des arômes caractéristiques du&nbsp;**melon de Bourgogne.**\n\n&nbsp;### **Sols&nbsp;**\n\nLes terroirs de la région nantaise offrent une&nbsp;**grande diversité**, mais partagent une origine&nbsp;**hercynienne**&nbsp;commune. Le&nbsp;**substrat**&nbsp;est principalement constitué de&nbsp;**roches éruptives**&nbsp;et&nbsp;**métamorphiques**&nbsp;telles que les&nbsp;**granites,**&nbsp;les&nbsp;**gneiss,**&nbsp;les&nbsp;**micaschistes,**&nbsp;les&nbsp;**gabbros**&nbsp;et les&nbsp;**amphibolites,**&nbsp;avec par endroits des dépôts tertiaires&nbsp;**d'argiles**&nbsp;et de sables riches en&nbsp;**galets.**&nbsp;Ces sols contribuent à la capacité de**&nbsp;réchauffement rapide**, permettant&nbsp;à la vigne&nbsp;de&nbsp;**s'épanouir pleinement.**\n\n&nbsp;### **Cépages&nbsp;**\n\nLe cépage star de l'AOC Muscadet est le&nbsp;**melon de Bourgogne**. Son caractère&nbsp;**précoce**&nbsp;et sa**&nbsp;résistance au froid**&nbsp;en font le choix idéal pour la&nbsp;**région nantaise**. Cependant,&nbsp;d'autres cépages sont autorisés sur l'appellation Muscadet,&nbsp;comme&nbsp;le&nbsp;**chardonnay**, le&nbsp;**sauvignon blanc**&nbsp;et le&nbsp;**pinot gris,**&nbsp;qui ajoutent de la&nbsp;**diversité**&nbsp;et de la&nbsp;**complexité**&nbsp;aux vins de l'AOC Muscadet.\n\n## &nbsp;\n\n## **Production du Muscadet&nbsp;**\n\n&nbsp;\n\nL'AOC Muscadet bénéficie d'une&nbsp;**production annuelle significative**, avec une superficie couvrant&nbsp;**81 communes réparties principalement en Loire-Atlantique**, dans le&nbsp;**Maine-et-Loire**&nbsp;et en&nbsp;**Vendée.**&nbsp;Les vignerons de la région mettent tout en œuvre pour offrir des vins de qualité exceptionnelle, mettant en valeur le terroir unique de la région nantaise.\n\n&nbsp;### **Producteurs&nbsp;**\n\nLa région nantaise regorge de&nbsp;**producteurs passionnés**&nbsp;qui façonnent le paysage viticole de l'AOC Muscadet. Leur engagement envers la&nbsp;**tradition**&nbsp;et&nbsp;**l'innovation**&nbsp;se reflète dans&nbsp;**chaque bouteille**, garantissant une&nbsp;**expérience mémorable**&nbsp;pour les amateurs de vin.\n\n&nbsp;### **Rendement annuel**\n\nLe rendement annuel de l'AOC Muscadet varie&nbsp;**en fonction des conditions climatiques**&nbsp;et des pratiques viticoles spécifiques de chaque vigneron. Ces rendements maîtrisés permettent de préserver la&nbsp;**qualité**&nbsp;et l'expression&nbsp;**authentique**&nbsp;des vins.",
        rawWindow: "2 à 5 ans (plus pour les grands millésimes).\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`83999821-F664-4676-9B39-3DA2709AE9FC`
        ],
        region: DefaultWineRegion.`2ED2B2B9-6EAE-4FB7-BBEA-7B926F24CA9B`
    )

    static let `8DAC1F44-04E0-4368-A7E3-4687FA41AE73` = DefaultWineAppellation(
        id: UUID(uuidString: "8DAC1F44-04E0-4368-A7E3-4687FA41AE73")!,
        name: "Jasnières",
        description: "Dans la Sarthe, bien délimitée sur un unique versant exposé plein sud et long de 4&nbsp;km, **l'appellation jasnières est incluse dans celle des coteaux-du-loir**. **Ce vignoble le plus septentrional de la Loire accueille le chenin blanc, seul cépage autorisé**, qui s'exprime dans un vin sec, fruité, à la forte minéralité de pierre à fusil et d'une étonnante longévité.",
        rawWindow: "5 à 10 ans et au-delà.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `3178AFAD-E84B-41C7-AF72-D5145D08443E` = DefaultWineAppellation(
        id: UUID(uuidString: "3178AFAD-E84B-41C7-AF72-D5145D08443E")!,
        name: "Bourgueil",
        description: "La culture de la vigne date de l'époque romaine. Mais c'est au Moyen Âge qu'elle prit son essor, sous l'impulsion de l'abbaye de Bourgueil. L'essentiel de la production provient aujourd'hui de Benais, Bourgueil, Ingrandes, Saint-Patrice et Restigné, en Indre-et-Loire, couvrant une haute terrasse alluviale sur la rive droite de la Loire. Celle-ci se partage entre terroirs de tuf et sols de graves&nbsp;: les uns produisent des vins structurés et de longue garde, les autres des vins aimables dès leur jeunesse, très aromatiques et élégants.",
        rawWindow: "5 à 10 ans.\n",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `5DEE3F25-5CE1-4969-A577-C03A2DB7C725` = DefaultWineAppellation(
        id: UUID(uuidString: "5DEE3F25-5CE1-4969-A577-C03A2DB7C725")!,
        name: "Coteaux-du-Loir",
        description: "Entre Vendôme et Château-du-Loir, les vignobles de l'AOC coteaux-du-loir s'accrochent aux pentes dominant le Loir, qui coule d'est en ouest dans une vallée large de 2&nbsp;km et souvent profonde de près de 80&nbsp;m. La forêt de Bercé peuplée de chênes rouvres protège cette vallée des vents du nord, tandis que les influences bénéfiques de l'Atlantique remontent vers les vignes.",
        rawWindow: "Rouge : 2 à 7 ans.\n Blanc : 5 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `74DD40C1-E358-4BFF-939E-3806BFFDBC09` = DefaultWineAppellation(
        id: UUID(uuidString: "74DD40C1-E358-4BFF-939E-3806BFFDBC09")!,
        name: "Saint-Nicolas-de-Bourgueil",
        description: "À l'extrémité nord-ouest de la Touraine, le vignoble de Saint-Nicolas-de-Bourgueil est implanté uniquement sur la commune du même nom, alors que celui de Bourgueil couvre huit communes. Il s'étend sur une ancienne terrasse de la rive droite de la Loire et sur le pied du coteau façonné par le fleuve. Abrité au nord par un massif forestier, il bénéficie d'un climat plus chaud et sec que le reste de la région. Près du coteau, des sols argilo-calcaires issus de la craie tuffeau (sols de tuf) donnent des vins très structurés ; la majorité des sols sont constitués d'alluvions anciennes, sablo-graveleuses, qui engendrent des vins plus souples et élégants. Cépage presque exclusif de l'appellation, le cabernet franc ou breton produit des vins d'une grande richesse aromatique, dont les caractères varient selon le terroir et le mode de vinification. Les vins de tuf sont à attendre quatre ou cinq ans.",
        rawWindow: "Rouge : 5 à 10 ans.\n Rosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `A1E830E0-6AB8-46C6-9729-A36871DCD7A9` = DefaultWineAppellation(
        id: UUID(uuidString: "A1E830E0-6AB8-46C6-9729-A36871DCD7A9")!,
        name: "Chinon",
        description: "Située dans un triangle compris entre la Vienne et la Loire, l'appellation chinon, renommée pour ses vins rouges, repose sur un sous-sol de craie plus ou moins tendre – le tuffeau. La ville de Chinon fut le lieu de résidence préféré d'Henri II Plantagenêt, et c'est pendant la guerre de Cent Ans, en 1429, que Jeanne d'Arc reconnut dans la Grande Salle du château le futur Charles VII. Le terroir de Chinon vit naître, en 1494, à La Devinière, l'un des grands humanistes français, Rabelais.",
        rawWindow: "Rouge : 5 à 10 ans.\n Rosé : à boire jeune.\n Blanc : jusqu’à 5 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `EF2C3A4D-BCAB-4C36-9142-502AA11E4428` = DefaultWineAppellation(
        id: UUID(uuidString: "EF2C3A4D-BCAB-4C36-9142-502AA11E4428")!,
        name: "Touraine-Mesland",
        description: "Le vignoble de Mesland est implanté sur les coteaux de la rive droite de la Loire, à l'ouest de Blois. Il fait face au château de Chaumont, construction gothique et Renaissance entourée d'un parc planté d'essences rares. Dans les années 1840, le **gamay noir** fut implanté aux dépens du **côt** dans cette aire, où il s'adapta parfaitement. Sols d'argiles à silex mêlés de sables granitiques, climat continental et faibles rendements&nbsp;&nbsp;: autant d'atouts pour la production de vins amples et de bonne longévité.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\nBlanc : 5 à 10 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `6BB16477-FB73-4920-843C-A9B92BFAE2DA` = DefaultWineAppellation(
        id: UUID(uuidString: "6BB16477-FB73-4920-843C-A9B92BFAE2DA")!,
        name: "Cour-Cheverny",
        description: "Cette appellation, héritière d'un long passé viticole puisque le vignoble remonte à François&nbsp;Ier, est située au sud-est de Blois, au sein de la Sologne viticole qui s'étend de la Loire à la Grande Sologne. Sur ce terroir sillonné par trois vallées, le Beuvron, le Cosson et la Bièvre, les vignes trouvent des sites privilégiés. **Un seul cépage, le romorantin**, produit des vins blancs, obtenus après de longues fermentations.",
        rawWindow: "Blanc sec : 5 ans.\nBlanc moelleux : jusqu’à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`C64BFFDA-2A6D-4DCC-91BF-4FA776A19413`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `A3A00CD4-0035-4634-B5C9-CD05D160E598` = DefaultWineAppellation(
        id: UUID(uuidString: "A3A00CD4-0035-4634-B5C9-CD05D160E598")!,
        name: "Touraine-Azay-le-Rideau",
        description: "Le vignoble d'Azay-le-Rideau s'étend le long de la vallée de l'Indre, entre Montbazon et la Loire, sur des sols constitués d'argile à silex. Le confluent de l'Indre et de la Loire confère à cette petite région un climat particulièrement doux, favorable à la maturation des raisins tardifs. Les vins rosés et les vins blancs secs ou demi-secs sont fins et élégants.",
        rawWindow: "Blanc : 5 à 10 ans.\n Rosé : à boire jeune.\n",
        colors: [.rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `3D28B9AF-C00A-4213-82AF-259269BF3941` = DefaultWineAppellation(
        id: UUID(uuidString: "3D28B9AF-C00A-4213-82AF-259269BF3941")!,
        name: "Touraine",
        description: "La Loire coule en Touraine sur près de 100&nbsp;km, recevant le Cher, l'Indre et la Vienne au sud, la Cisse et la Brenne au nord&nbsp;: ce sont autant de vallées qui se dessinent, dont les coteaux sont couverts de vignes. Les vins de l'appellation touraine diffèrent ainsi selon les terroirs, mais ils ont en commun beaucoup de fraîcheur et de fruit. Les zones les plus occidentales bénéficient des influences atlantiques et de belles journées d'automne qui favorisent la maturation des cépages tardifs comme le **cabernet franc**. À l'est, où le caractère continental est marqué, le **sauvignon** gagne en expression dans des vins secs. Le touraine primeur, issu essentiellement du **gamay noir**, a été reconnu comme une appellation à part entière en 1979.",
        rawWindow: "Blanc sec : 1 à 3 ans.\nRouge de cabernet et côt : 2 à 4 ans.\nRosé, effervescents et rouge de gamay : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `5A87B175-EF1E-4F26-9534-7541CC6E7F62` = DefaultWineAppellation(
        id: UUID(uuidString: "5A87B175-EF1E-4F26-9534-7541CC6E7F62")!,
        name: "Touraine-Amboise",
        description: "Situé entre Tours et Blois, le vignoble d'Amboise se répartit sur les deux rives de la Loire, où l'on retrouve la classique argile à silex de Touraine. Le climat a perdu une partie de son caractère atlantique mais reste favorable aux cépages tardifs. En blanc, le **chenin blanc** donne naissance à des vins secs, demi-secs ou moelleux. Les vins rouges comme les rosés sont généralement à base de **gamay**, mais il existe des assemblages de semi-garde à forte proportion de **cabernet** et de **côt**.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\nBlanc : 5 à 10 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `05E7C31B-D127-432D-BB1B-C301A28D61E4` = DefaultWineAppellation(
        id: UUID(uuidString: "05E7C31B-D127-432D-BB1B-C301A28D61E4")!,
        name: "Montlouis-sur-Loire",
        description: "**Entre Amboise et Tours, l'appellation fait face à celle de Vouvray**, sur la rive gauche de la Loire. Elle s'étend entre ce fleuve et le Cher, limitée à l'est par la forêt d'Amboise. Ses vins étaient à l'origine vendus sous le nom de vouvray, puis les trois communes de Montlouis-sur-Loire, de Lussault-sur-Loire et de Saint-Martin-le-Beau ont obtenu leur propre AOC. Le vignoble bénéficie d'influences atlantiques et d'une exposition au sud. Il est implanté sur des sols caillouteux qui captent le moindre rayon de soleil. **Seul cépage cultivé, le chenin**, a**ussi appelé pineau de la Loire**, fournit des vins tranquilles secs, demi-secs ou moelleux, la part de ces styles variant selon les conditions météorologiques de l'année. L'appellation produit aussi des mousseux élaborés selon la méthode traditionnelle ainsi que quelques pétillants.",
        rawWindow: "Sec : 5 ans.\n Moelleux : 10 ans et plus.\n Effervescent : à boire jeune.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `EE1EDEFA-CF9A-4E3F-9D75-9B74C7140AF6` = DefaultWineAppellation(
        id: UUID(uuidString: "EE1EDEFA-CF9A-4E3F-9D75-9B74C7140AF6")!,
        name: "Cheverny",
        description: "Au sud de Blois, le vignoble d'appellation cheverny appartient à la Sologne. Son emblème est le château de Cheverny, de style Louis XIII, qui servit de modèle au château de Moulinsart dessiné par Hergé. Son terroir à dominante sableuse s'étend le long de la rive gauche du fleuve jusqu'à l'Orléanais. Les vins rouges sont traditionnellement issus d'assemblage. Les rouges, fruités, font une place croissante au **pinot noir**, cépage adapté au climat, qui leur donne de l'étoffe et de la finesse. Les blancs, qui mêlent **sauvignon** et **chardonnay**, sont floraux et fins.",
        rawWindow: "Blanc et rosé : 2 à 4 ans.\nRouge : 2 à 8 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `450BABBB-2F89-4A58-A583-89A4C8948063` = DefaultWineAppellation(
        id: UUID(uuidString: "450BABBB-2F89-4A58-A583-89A4C8948063")!,
        name: "Valençay",
        description: "Porte nord-ouest du Berry, le vignoble de Valençay s'inscrit dans le prolongement du Val de Loire. Son aire se répartit sur quatorze communes de l'Indre et une du Loir-et-Cher (Selles-sur-Cher), sur la rive gauche du Cher. Les vignes couvrent les coteaux formés par les nombreuses rivières qui entaillent les plateaux. Elles produisent des vins frais et bouquetés, marqués par des arômes de pierre à fusil.",
        rawWindow: "Rouge : 2 à 4 ans.\n Blanc et rosé : à boire jeunes.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `7B85BD64-4085-4885-A782-29DBF252F0E0` = DefaultWineAppellation(
        id: UUID(uuidString: "7B85BD64-4085-4885-A782-29DBF252F0E0")!,
        name: "Vouvray",
        description: "Au cœur de **la Touraine**, le vignoble de Vouvray couvre les coteaux qui bordent la rive droite de la Loire et les vallées qui sillonnent le plateau, à l'est de Tours. Les sols bien drainés se réchauffent facilement et sont propices à la maturation du **chenin**. Le climat de Vouvray n'est jamais excessif, mais l'ensoleillement et la pluviométrie sont si variables d'une année à l'autre que la notion de millésime prend toute son importance. En année favorable, le raisin est vendangé tardivement pour élaborer des vins demi-secs ou moelleux. Récolté plus précocement, il donne naissance à des vins secs. Les vins effervescents, apparus à la fin du XIX e&nbsp;siècle, complètent la vaste gamme des vouvray.",
        rawWindow: "Sec : 5 ans.\nMoelleux : 10 ans et plus.\nEffervescent : à boire jeune.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `26994955-CE1E-42A8-ACD7-3832099716A4` = DefaultWineAppellation(
        id: UUID(uuidString: "26994955-CE1E-42A8-ACD7-3832099716A4")!,
        name: "Coteaux-du-Vendômois",
        description: "Les vignes s'étendent sur la partie amont de la vallée du Loir, des deux côtés de la rivière, entre Vendôme et Montoire. Implantées sur les coteaux calcaires, elles se composent principalement de **chenin blanc**, de **gamay** et de **pineau d'Aunis**, ce dernier étant souvent vinifié en vin gris. Depuis quelques années, à la demande des consommateurs, les vins rouges se développent.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `78F1A613-E9C5-4918-AD45-F0C21948C26C` = DefaultWineAppellation(
        id: UUID(uuidString: "78F1A613-E9C5-4918-AD45-F0C21948C26C")!,
        name: "Orléans",
        description: "Le nom de l'Orléanais évoque l'image d'une province dont les cultures céréalières annoncent déjà l'Île-de-France. Pourtant, la vigne connut des heures glorieuses au Moyen Âge, bénéficiant de la proximité de Paris, de villes développées, de monastères et d'un fleuve pour le transport de son vin. Si, en théorie, l'aire d'appellation s'étend sur treize communes, en réalité le vignoble n'occupe qu'une centaine d'hectares sur les plateaux qui encadrent la Loire. Les principales parcelles se trouvent au sud du fleuve, près de Notre-Dame-de-Cléry, profitant des excellents sols de graviers siliceux que leur offre la région. **Le cépage le plus original est le pinot meunier**, qui produit un vin rouge bouqueté et très coloré.",
        rawWindow: "Rouge : 2 à 4 ans.\nBlanc et rosé : à boire jeunes.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`6C93913A-AFA8-465D-BB50-6DA741AC3D2B`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `1211A71F-FE3E-4F5B-BC3D-F0D6F3BC8054` = DefaultWineAppellation(
        id: UUID(uuidString: "1211A71F-FE3E-4F5B-BC3D-F0D6F3BC8054")!,
        name: "Touraine-Chenonceaux",
        description: "Couvrant les premières «&nbsp;côtes&nbsp;» des deux rives du Cher, sur vingt-sept communes de l'Indre-et-Loire et du Loir-et-Cher, le vignoble touraine-chenonceaux est, avec **touraine-oisly**, le plus récent des sous-ensembles délimités dans la vaste **appellation touraine**. Conscients du potentiel de leur terroir, les vignerons ont œuvré, des décennies durant, à donner à leur vin une dimension qui les distingue de ceux de l'AOC régionale. Dans cette quête de qualité et d'authenticité, ils ont réservé l'encépagement au seul **cépage sauvignon** en blanc et ont privilégié le **côt** et le **cabernet franc** en rouge. Des parcelles sélectionnées riches en silex, des rendements plus faibles, des élevages plus longs en rouge contribuent également au caractère de ces vins, des rouges amples et complexes et des blancs expressifs.",
        rawWindow: "Blanc : 1 à 3 ans.\nRouge : 2 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `A73BCA15-4289-4138-9711-050E35FAED4C` = DefaultWineAppellation(
        id: UUID(uuidString: "A73BCA15-4289-4138-9711-050E35FAED4C")!,
        name: "Touraine-Noble-Joué",
        description: "Après être longtemps restée sous l'égide de l'**AOC touraine**, l'aire du Noble-Joué a retrouvé sa dénomination d'origine, en reconnaissance de la typicité de ses vins rosés. Présente bien avant le XV e&nbsp;siècle, sa vigne fait partie du patrimoine viticole de la Touraine. À la fin du XIX e&nbsp;siècle, elle constituait l'un des plus grands vignobles de la région mais, victime d'aléas climatiques et de l'urbanisation, elle disparut après la Première Guerre mondiale. En 1970, des viticulteurs la firent renaître en ne gardant de l'ancien terroir que les parcelles situées à l'est de Tours, entre le Cher et l'Indre, sur les coteaux les mieux exposés. Aujourd'hui, le vignoble se développe progressivement.",
        rawWindow: "À boire jeune (jusqu’à 3 ans pour les grands millésimes).\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6C93913A-AFA8-465D-BB50-6DA741AC3D2B`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `288FBA7E-B40E-48CD-B222-9395EA132A3B` = DefaultWineAppellation(
        id: UUID(uuidString: "288FBA7E-B40E-48CD-B222-9395EA132A3B")!,
        name: "Orléans-Cléry",
        description: "Reconnue en 2006, l'appellation porte le nom de la commune de Cléry dont la basilique renferme le tombeau de Louis&nbsp;XI. Comprise dans l'aire d'**appellation orléans**, elle est réservée aux vins rouges. Implantée sur les terrasses sablo-graveleuses de la rive sud de la Loire, elle étend son vignoble sur cinq communes en aval d'Orléans&nbsp;: Cléry-Saint-André, Mareau-aux-Prés, Mézières-lez-Cléry, Olivet, Saint-Hilaire-Saint-Mesmin. Le terroir est délimité par la Loire, au nord, et le secteur forestier de la Sologne, au sud. Protégé des vents par la forêt, il bénéficie d'un climat océanique, toutefois marqué par des influences continentales qui se traduisent par des températures moyennes légèrement inférieures à celles de la Touraine, plus méridionale. **Le cabernet franc, unique cépage de l'appellation**, trouve une belle expression dans les alluvions épaisses qui se réchauffent facilement. Sa culture s'est maintenue dans les propriétés des notables, alors que l'Orléanais viticole était devenu un vignoble de masse ravitaillant les cabarets de la capitale. C'est une des rares variétés à avoir subsisté quand le vignoble s'est réduit comme peau de chagrin. Elle donne des vins rouges au caractère léger et fruité.",
        rawWindow: "2 à 4 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `80AB2CFA-0155-43E4-BCB4-0F8457DD4C4A` = DefaultWineAppellation(
        id: UUID(uuidString: "80AB2CFA-0155-43E4-BCB4-0F8457DD4C4A")!,
        name: "Touraine-Oisly",
        description: "Sur la rive gauche de la Loire, entre ce fleuve et le Cher, le terroir viticole d'Oisly s'étend sur dix communes de la partie orientale de l'aire d'**appellation touraine**. Cheverny est à une quinzaine de kilomètres au nord. La Sologne forestière, avec ses étangs et son gibier, est toute proche, à l'est. Le vignoble est implanté sur le plateau de la Sologne viticole. À l'est de Tours, les influences océaniques apparaissent très atténuées, et le climat est semi-continental. L'encépagement change également&nbsp;: en blanc, le **chenin** fait place au **sauvignon**. Les sols, graviers et formations dites «&nbsp;de Sologne&nbsp;» (sables, argiles, faluns) sont propices à ce cépage qui exprime ici des vins d'une grande subtilité. C'est pourquoi les vignerons ont réservé l'encépagement du touraine-oisly à cette seule variété, qui fournit des vins légers et élégants, caractérisés par la fraîcheur et la finesse.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`6B2E9F5D-380B-4E03-9367-85FC9FE1BA80`
    )

    static let `B43855FA-6434-4D6C-866D-3D0FE95E93C8` = DefaultWineAppellation(
        id: UUID(uuidString: "B43855FA-6434-4D6C-866D-3D0FE95E93C8")!,
        name: "Rosé-de-Loire",
        description: "Les rosés-de-loire peuvent être produits dans les limites des aires d'appellations régionales **anjou**, **saumur** et **touraine** sur 294&nbsp;communes. Ces vins sont très marqués par le caractère des cépages qui les composent et par les terroirs où ils sont nés. La production rassemble aussi bien des vins légers que des vins plus charpentés.",
        rawWindow: "À boire jeune.\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`
        ],
        region: DefaultWineRegion.`48CF4665-6C60-4E2F-8C76-FB361DE4A6AC`
    )

    static let `335E5303-C4E7-423C-B29D-6C8D048F595B` = DefaultWineAppellation(
        id: UUID(uuidString: "335E5303-C4E7-423C-B29D-6C8D048F595B")!,
        name: "Crémant-de-Loire",
        description: "**Cette appellation régionale s'applique à des vins effervescents surtout blancs, parfois rosés, élaborés selon la méthode traditionnelle**, avec une seconde fermentation en bouteille et une période de maturation sur lies de neuf mois minimum. Son aire géographique, très étendue, longe la Loire et ses affluents, la Vienne, l'Indre et le Cher, sur environ 200&nbsp;km, et concerne 318&nbsp;communes. Elle se superpose avec celle des **AOC anjou**, **saumur**, **touraine** et **cheverny**. La majorité de la production provient du Saumurois, où de nombreuses caves creusées dans la pierre calcaire de tuffeau constituent un milieu idéal pour l'élaboration et le stockage de ces vins. Dans ce secteur, on élabore des mousseux depuis le début du XIX e&nbsp;siècle. **Nombreux, les cépages de l'appellation sont ceux des différentes zones du Val de Loire**&nbsp;: **chenin**, **chardonnay**, **cabernet franc**, **cabernet-sauvignon**, et **pinot noir**, pour les principaux. Cette diversité en matière de cépages, de sols et de climats crée une palette de caractères assez larges.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`3E057C6C-41EA-4EDC-915B-D96CA5C1171E`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`97DD735D-A5C3-46C5-91A9-A0A6A0E191F9`,
            DefaultGrapeVariety.`770F2680-1662-4CF0-95FD-3814F3835859`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`
        ],
        region: DefaultWineRegion.`48CF4665-6C60-4E2F-8C76-FB361DE4A6AC`
    )

    static let `BD86F5FB-0410-4468-8A01-1B023629978A` = DefaultWineAppellation(
        id: UUID(uuidString: "BD86F5FB-0410-4468-8A01-1B023629978A")!,
        name: "Pouilly-sur-Loire",
        description: "Situé au nord-est du département de la Nièvre, sur les bords de la Loire, le vignoble s'étend sur le territoire de Pouilly-sur-Loire ainsi que sur six communes périphériques. Comme les **AOC menetou-salon**, **quincy**, **reuilly** et **sancerre**, le pouilly-sur-loire relève de la viticulture septentrionale. **Le cépage chasselas** tient encore la vedette dans ces vins blancs légers.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`3373BE45-2B07-46E0-9C74-BD72BFE52709`,
            DefaultGrapeVariety.`D5F9574D-0224-4F71-A990-9F7C0DA3E7C4`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `768A34AB-5ADA-40EE-97E0-446105232ACF` = DefaultWineAppellation(
        id: UUID(uuidString: "768A34AB-5ADA-40EE-97E0-446105232ACF")!,
        name: "Saint-Pourçain",
        description: "Au XIII e&nbsp;siècle, le blason de Saint-Pourçain-sur-Sioule était ornementé d'un tonneau et d'une fleur de lys. Deux symboles identitaires pour cette cité du Bourbonnais qui a donné son nom à l'un des vins favoris des rois de France. Le vignoble se déploie sur la rive gauche de l'Allier, de la Sioule et de la Bouble. Les vins blancs ont longtemps fait sa réputation, mais aujourd'hui les vignerons jouent la carte des vins rouges et rosés. AOVDQS depuis 1951, les saint-pourçain ont accédé à l'AOC en 2009.",
        rawWindow: "Rouge : 2 à 3 ans (jusqu’à 5 ou 6 ans pour les grands millésimes).\n Blanc et rosé : à boire jeunes.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`7A5A4BF2-4BC5-48CA-9B5F-BA1FF169809A`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `427CAF94-AD2E-428C-9C22-A13F775EB1B3` = DefaultWineAppellation(
        id: UUID(uuidString: "427CAF94-AD2E-428C-9C22-A13F775EB1B3")!,
        name: "Quincy",
        description: "À mi-chemin entre Loire et Bourgogne, le vignoble de Quincy s'étend sur la rive gauche du Cher, non loin de Bourges et près de Mehun-sur-Yèvre. Des plateaux viticoles situés à 125&nbsp;m d'altitude, recouverts de sables et de graviers anciens s'inscrivent dans un pays au relief à peine marqué. Quincy produit des vins blancs issus du seul sauvignon qui se distinguent par la fraîcheur et la finesse de leurs arômes.",
        rawWindow: "2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `81CE2438-E66D-4D7E-97DA-6D229B02BE0D` = DefaultWineAppellation(
        id: UUID(uuidString: "81CE2438-E66D-4D7E-97DA-6D229B02BE0D")!,
        name: "Pouilly-Fumé",
        description: "Proche de Nevers, sur la rive droite de la Loire, les vignes de Pouilly-sur-Loire sont exposées face au sud. **Le sauvignon, ou blanc fumé, couvre 95&nbsp;% de la superficie du vignoble**. D'un fruité remarquable, il fait la notoriété de l'appellation Pouilly-fumé. Dans les terres à silex, les vins structurés possèdent un bouquet particulier, souvent qualifié de pierre à fusil. Issus des «&nbsp;cris&nbsp;», sols où la charge en pierres calcaires est importante et au réchauffement rapide, les vins de l'**appellation Pouilly-fumé** sont élégants et parfumés. Originaires des marnes kimméridgiennes, terres calcaires imperméables, ils sont pleins et fermes.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `DC802396-BC00-4B09-913E-BF5A47494B60` = DefaultWineAppellation(
        id: UUID(uuidString: "DC802396-BC00-4B09-913E-BF5A47494B60")!,
        name: "Côtes-du-Forez",
        description: "Entre Clermont-Ferrand et Saint-Étienne, le vignoble des côtes-du-forez est magnifiquement exposé. Il se trouve à des altitudes comprises entre 400 et 600 m, protégé des perturbations météorologiques par les monts du Forez. Le gamay, cépage unique, est implanté sur des terrains granitiques alliés à des buttes basaltiques d'origine volcanique qui impriment aux vins un caractère original et leur assurent de la structure.",
        rawWindow: "Rouge : 2 à 3 ans.\n Rosé : à boire jeune.\n",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `15477B3E-C8D3-41FC-8E88-1A502E5838E8` = DefaultWineAppellation(
        id: UUID(uuidString: "15477B3E-C8D3-41FC-8E88-1A502E5838E8")!,
        name: "Côtes-D'Auvergne",
        description: "Dans le Puy-de-Dôme, entre Riom, au nord, et Issoire, au sud, le vignoble auvergnat s'étend sur cinquante-deux communes. L'appellation est située sur les coteaux bordant la plaine de la\n\nLimagne et sur les flancs des puys (montagnes volcaniques d'Auvergne), entre 350 et 500&nbsp;m d'altitude. Le **gamay** est le cépage le plus répandu. Selon sa situation et le type de sol, il est vinifié en rouge, principalement sur Chateaugay, ou en rosé à Corent. Sont également présents le **pinot noir**, ou auvernat, et le **chardonnay**. AOVDQS depuis 1951, les côtes-d'auvergne sont devenues AOC en 2011.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\nBlanc : 1 à 2 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `06F194B3-B246-4F40-BA69-B3A19055E18A` = DefaultWineAppellation(
        id: UUID(uuidString: "06F194B3-B246-4F40-BA69-B3A19055E18A")!,
        name: "Coteaux-du-Giennois",
        description: "Voisine des **AOC sancerre** et **pouilly-fumé**, l'aire des coteaux-du-giennois constitue le vignoble le plus septentrional de la Loire nivernaise. Depuis les anciennes terrasses de la Loire à Gien, les vignes s'étendent vers Cosne-sur-Loire sur des sols argilo-calcaires. Orientés à leurs débuts vers des vins rouges et rosés, issus de l'assemblage du **gamay** et du **pinot noir**, les coteaux-du-giennois développent la culture du **sauvignon**.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\nBlanc : 1 à 3 ans.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `6E8107B5-9268-4B75-827C-AD0B4578D7B9` = DefaultWineAppellation(
        id: UUID(uuidString: "6E8107B5-9268-4B75-827C-AD0B4578D7B9")!,
        name: "Châteaumeillant",
        description: "Cette appellation est située dans la province historique du Berry. Le vignoble forme une bande d'une vingtaine de kilomètres de long sur cinq de large et s'étend sur le territoire de sept communes, à cheval sur les départements de l'Indre et du Cher. Il est installé sur une succession de coteaux, entre 250 et 300 m d'altitude, irrigué par sept cours d'eau qui prennent leur source aux premières assises du Massif central. Les sols sont composés de sables du trias, plus ou moins recouverts de formations tertiaires, ou bien de micaschistes, à l'est du vignoble. Le **gamay** constitue le cépage principal. Assemblé au **pinot noir**, il est à l'origine de vins souples et frais, gouleyants à souhait. Le **pinot gris**, qui complète l'encépagement, s'ajoute aux deux précédents pour fournir le vin gris. Ce rosé de pressurage direct au goût délicat a fait la réputation du vignoble. Le châteaumeillant a été reconnu en 1965 en AOVDQS avant d'accéder à l'AOC en 2010.",
        rawWindow: "Rouge : 2 à 5 ans.\nRosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `01D20B6D-4D28-486D-A577-1F91E9559ECF` = DefaultWineAppellation(
        id: UUID(uuidString: "01D20B6D-4D28-486D-A577-1F91E9559ECF")!,
        name: "Côte-Roannaise",
        description: "Adossé au versant oriental des monts de la Madeleine, au cœur du Massif central, le vignoble de la Côte roannaise se limite aux meilleurs coteaux à l'ouest de Roanne, dont les sols sont granitiques. C'est le pays du gamay. La production de vins rouges fruités et originaux est complétée d'agréables vins rosés qui bénéficient également de l'AOC.",
        rawWindow: "Rouge : 1 à 3 ans.\n Rosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `5176583B-9E29-42EC-95D9-B52466E4759B` = DefaultWineAppellation(
        id: UUID(uuidString: "5176583B-9E29-42EC-95D9-B52466E4759B")!,
        name: "Menetou-Salon",
        description: "Au nord-est de Bourges, le vignoble de Menetou-Salon doit sa naissance et sa renommée à la proximité de cette ancienne métropole médiévale. Son vin était apprécié à la table seigneuriale du grand argentier de Charles&nbsp;VII, Jacques Cœur. Les vignes s'étendent dans deux régions agricoles&nbsp;: le Pays-Fort-Sancerrois et la Champagne berrichonne. **Ici, le sauvignon restitue avec subtilité l'expression du terroir de marnes et de calcaires kimméridgiens à travers des vins blancs frais et fruités**. Les vins rouges friands constituent une production plus récente.",
        rawWindow: "Blanc : 1 à 3 ans.\nRouge : 1 à 5 ans.\nRosé : à boire jeune.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `B7E1366C-C464-4F6F-9128-1C3330E88614` = DefaultWineAppellation(
        id: UUID(uuidString: "B7E1366C-C464-4F6F-9128-1C3330E88614")!,
        name: "Reuilly",
        description: "À la limite des départements de l'Indre et du Cher, à 30&nbsp;km au sud de Vierzon, l'aire du reuilly possède une modeste superficie d'une dizaine de kilomètres, entrecoupée par un plateau agricole. La vigne occupe de beaux coteaux ensoleillés au bord de l'Arnon et de La Théols. **Le sauvignon produit des blancs secs et fruités**, qui prennent ici une ampleur remarquable. **Le pinot gris fournit localement un rosé de pressoir tendre et délicat, qui risque de disparaître, supplanté par le pinot noir dont on tire également d'excellents rosés**, plus colorés, mais surtout des rouges pleins, toujours légers, au fruité affirmé.",
        rawWindow: "Blanc et rosé : 2 ans.\nRouge : 4 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`F34090DF-6F91-447D-B9D2-CEC763E5C148`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `46DCF7C2-3F3B-436A-92D0-D929FE92B0FD` = DefaultWineAppellation(
        id: UUID(uuidString: "46DCF7C2-3F3B-436A-92D0-D929FE92B0FD")!,
        name: "Sancerre",
        description: "Bâti sur une butte, sur la rive gauche de la Loire, Sancerre commande un vignoble historique, dont le vin fut cité par les poètes dès le règne de Philippe Auguste. Le dégustateur trouve ici une parfaite illustration de l'expression du terroir et de son influence sur les cépages&nbsp;: implanté sur des coteaux sculptés par le fleuve, le sauvignon restitue une multitudes de nuances aromatiques qui font du sancerre un vin élégant et racé. Le sancerre rouge, au caractère friand, est un produit récent dans le vignoble, mais déjà très apprécié.\n\n## Vins d'appellation&nbsp;Sancerre\n\nDeux cépages règnent à Sancerre : le sauvignon en blanc&nbsp; et le pinot noir en rouge. Le sauvignon blanc s'épanouit dans des&nbsp; vins blancs frais, jeunes et fruités, qui prennent des nuances différentes selon les types de sols ; le pinot noir s'exprime dans des vins rosés tendres et subtiles, et dans des vins rouges légers et parfumés et amples.&nbsp;\n\nSancerrre, c'est aussi un milieu humain particulièrement attachant. Il n'est pas facile, en effet, de produire un grand vin avec le sauvignon, cépage de deuxième époque de maturité, non loin de la limite nord de la culture de la vigne, à des altitudes de 200 à 300 mètres et sur des sols qui comptent parmi les plus pentus du pays, d'autant que les fermentations se déroulent en fin de saison dans des conditions délicates.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`
        ],
        region: DefaultWineRegion.`21C886C9-7357-4FC6-844A-0EDC8123514C`
    )

    static let `64C1ACE1-80C9-4DB5-935D-59ED6F088844` = DefaultWineAppellation(
        id: UUID(uuidString: "64C1ACE1-80C9-4DB5-935D-59ED6F088844")!,
        name: "Luberon",
        description: "Sur la rive gauche du Rhône, l'aire géographique de l'appellation correspond aux limites naturelles du massif du Luberon. Limitées au nord par la vallée du Calavon (Apt) et au sud par celle de la Durance (Cavaillon, Pertuis, Manosque), trente-six communes du Vaucluse constituent son terroir. Une région viticole déjà provençale par sa culture, son climat méditerranéen et ses vins rosés, mais où des influences alpines induisent des températures plus fraîches que dans la vallée du Rhône, ce qui explique la part assez importante des vins blancs.",
        rawWindow: "Rouge : 5 ans.\n Rosé : 2 ans.\n Blanc : 3 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `8C2EED6E-D4E1-4BA7-8E60-BE1F8EAF752F` = DefaultWineAppellation(
        id: UUID(uuidString: "8C2EED6E-D4E1-4BA7-8E60-BE1F8EAF752F")!,
        name: "Clairette-de-Bellegarde",
        description: "L'AOC clairette-de-bellegarde se situe sur la seule commune de Bellegarde, entre Beaucaire et Saint-Gilles dans le Gard. Les vignes sont implantées sur les coteaux et terrasses de la partie sud-est de la **costière de Nîmes**. L'autre partie de la commune se trouve dans la plaine basse des bords du Rhône, en limite de la Camargue, entre Arles et Nîmes. L'appellation ne produit que des vins blancs secs aux arômes bien typés, à partir du seul cépage autorisé, la **clairette**, particulièrement bien adapté à la sécheresse.",
        rawWindow: "1 à 2 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `CE778FCD-C2D7-4F3D-B7D0-74EF87656F4A` = DefaultWineAppellation(
        id: UUID(uuidString: "CE778FCD-C2D7-4F3D-B7D0-74EF87656F4A")!,
        name: "Costières-de-Nîmes",
        description: "L'appellation **Costières-de-Nîmes** regroupe une **grande variété de vins** qui témoignent de la **richesse** et de la **diversité** du terroir. Les vins produits dans cette région bénéficient d'une **appellation d'origine contrôlée (AOC)** qui garantit leur **qualité** et leur **authenticité**. Chaque appellation offre des caractéristiques uniques et des profils gustatifs spécifiques qui sauront ravir les palais les plus exigeants.\n\n## Costières-de-Nîmes : Histoire\n\nL'histoire des **Costières-de-Nîmes** remonte à plusieurs siècles. Située **aux confins du Languedoc**, cette région bénéficie d'un **terroir d'exception**. Les vignobles s'étendent sur un territoire de 40 km de long entre **Meynes** et **Vauvert,** et de 10 km de large entre **Saint-Gilles **et **Beaucaire.** Au fil des années, les vignerons ont su exploiter les conditions idéales de cette région ensoleillée pour produire des **vins de grande qualité.**\n\n&nbsp;",
        rawWindow: "Rouge : 4 à 5 ans.\nBlanc et rosé : à boire jeunes.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `CD2A9FDF-8EF7-4F1A-9D3A-2F8579752BF6` = DefaultWineAppellation(
        id: UUID(uuidString: "CD2A9FDF-8EF7-4F1A-9D3A-2F8579752BF6")!,
        name: "Grignan-les-Adhémar",
        description: "**Au sud de Montélimar, les collines calcaires des coteaux du Tricastin (ancien nom de cette AOC) se prolongent en terrasses fluviales sur la rive gauche du Rhône**. Toutefois, la vigne occupe peu de place dans ce pays de cocagne où se côtoient le lavandin, l'agneau et la truffe noire. **Et la proximité de&nbsp;l'AOC côtes-du-rhône fait souvent dire que les grignan-les-adhémar appartiennent à la même aire**. Pourtant, il s'agit d'une appellation bien distincte qui a sa propre identité.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `5F865DC7-14FC-4DC2-8592-BF395D9C3453` = DefaultWineAppellation(
        id: UUID(uuidString: "5F865DC7-14FC-4DC2-8592-BF395D9C3453")!,
        name: "Gigondas",
        description: "Le village de Gigondas est adossé à l'un des plus beaux sites naturels de la vallée&nbsp;: le massif des Dentelles de Montmirail. Ce terroir a dû patienter pendant plusieurs siècles avant d'affirmer sa personnalité viticole en conquérant les anciennes oliveraies. **L'orientation de l'encépagement vers le grenache noir**, la faiblesse des rendements conduisent à l'élaboration de vins rouges solides, charpentés, très structurés et de longue garde. Grâce à eux, le gigondas a forgé son image; aussi les rosés ne représentent-ils qu'une infime part de la production. **Avec les châteauneuf-du-pape, les vins rouges de gigondas sont les seigneurs de la basse vallée du Rhône**.",
        rawWindow: "Rouge : 8 à 10 ans.\nRosé : 1 à 3 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `3017914E-D496-42A0-8ECC-F1180F6902C4` = DefaultWineAppellation(
        id: UUID(uuidString: "3017914E-D496-42A0-8ECC-F1180F6902C4")!,
        name: "Vacqueyras",
        description: "Vacqueyras tire son nom du latin Vallea quadreria, la vallée des pierres. Dernière-née des appellations communales de la **vallée du Rhône**, son aire s'étend sur les communes vauclusiennes de Vacqueyras et de Sarrians, au pied des Dentelles de Montmirail. La rivière Ouvèze a déposé ici des nappes de cailloux roulés qui tempèrent la sécheresse estivale. S'ils ont acquis une telle notoriété, les vignerons de Vacqueyras le doivent surtout à leurs vins rouges complexes et concentrés.",
        rawWindow: "Rouge : 3 à 10 ans.\nBlanc et rosé : 1 à 2 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `9A768FA0-B523-4647-AC7E-B359D0DDB980` = DefaultWineAppellation(
        id: UUID(uuidString: "9A768FA0-B523-4647-AC7E-B359D0DDB980")!,
        name: "Ventoux",
        description: "Cette appellation est située à l'est de la **vallée du Rhône**, dans un secteur abrité du mistral par la chaîne des Dentelles de Montmirail, les contreforts du mont Ventoux, désormais appelé Ventoux et les monts du Vaucluse. Le vignoble du Ventoux s'étend sur cinquante et une communes, entre Vaison-la-Romaine au nord et Apt au sud. Il produit des vins très fruités caractérisés par un savant équilibre entre fraîcheur et élégance.",
        rawWindow: "Rouge : 3 à 5 ans.\nBlanc et rosé : 1 à 2 ans.\n",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `844DAABF-6F6A-4AB4-8649-6CCEB72ED5D1` = DefaultWineAppellation(
        id: UUID(uuidString: "844DAABF-6F6A-4AB4-8649-6CCEB72ED5D1")!,
        name: "Châteauneuf-du-Pape",
        description: "Le **vignoble de Châteauneuf-du-Pape**, qui garde le souvenir des papes d’Avignon, est situé sur la rive gauche du Rhône, à une quinzaine de kilomètres au nord de l’ancienne cité pontificale. **L’appellation Châteauneuf-du-Pape** fut la première à avoir défini légalement ses conditions de production, dès 1931. Son territoire s’étend sur la quasi-totalité de la **commune de Châteauneuf-du-Pape** qui lui a donné son nom et sur certains terrains de même nature des communes limitrophes d’Orange, de Courthézon, de Bédarrides et de Sorgues.\n\n**L’originalité de l’appellation Châteauneuf-du-Pape** provient de son sol, formé notamment de vastes terrasses de hauteurs différentes, recouvertes d’argile rouge mêlée à de nombreux cailloux roulés.&nbsp;\n\n&nbsp;## Vins d'appellation Châteauneuf-du-Pape\n\nDepuis 1929, de très nombreux cépages y sont autorisés pour la production de **vins rouges et vins blancs**.&nbsp;Parmi les cépages autorisés en châteauneuf-du-pape, très divers, prédominent grenache, syrah, mourvèdre et cinsault.\n\nLes vins de châteauneuf-du-pape s’apprécient mieux après une garde qui varie en fonction des millésimes.\n\n**Amples, corsés et charpentés, les vins rouges de châteauneuf-du-pape ont un bouquet puissant et complexe, et accompagnent avec succès les viandes rouges, le gibier et les fromages.**\n\nEnfin, si la notoriété des vins rouges est largement établie du fait, notamment, de l'importance de leur production, les amateurs connaissent bien les **vins blancs Châteauneuf-du-pape **qui rivalisent avec les plus grands et savent cacher **leur puissance par la finesse de leurs arômes**.",
        rawWindow: "Rouge : 5 à 20 ans.\nBlanc : 1 à 10 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`C548D3F4-7336-49D7-9FF7-411D93424C0F`,
            DefaultGrapeVariety.`1175A736-0092-4326-9DA6-E8CE533D3286`,
            DefaultGrapeVariety.`A34019CA-3857-4843-B23D-12D1C9A56A4E`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`5DBAC2D1-08B6-45E2-8531-0BBC52F52209`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `7A4E6F0A-85D5-4082-A489-1738A0AD834D` = DefaultWineAppellation(
        id: UUID(uuidString: "7A4E6F0A-85D5-4082-A489-1738A0AD834D")!,
        name: "Lirac",
        description: "Situé dans un méandre du Rhône, non loin d'Orange et d'Avignon, le vignoble s'étend sur les terrasses et les coteaux ensoleillés des quatre communes de Lirac, Roquemaure, Saint-Laurent-des-Arbres et Saint-Géniès-de-Colomas. Les sols y sont aussi divers que les cépages, mais il existe un élément fédérateur&nbsp;: le climat méditerranéen.",
        rawWindow: "Rouge : 2 à 8 ans.\n Rosé : 1 à 2 ans.\n Blanc : 1 à 3 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `6B4D2A0D-9788-4396-858A-433BD6DFE9F3` = DefaultWineAppellation(
        id: UUID(uuidString: "6B4D2A0D-9788-4396-858A-433BD6DFE9F3")!,
        name: "Tavel",
        description: "Face à **Châteauneuf-du-Pape**, sur la rive droite du Rhône, Tavel est un village gardois adossé à un plateau calcaire recouvert de garrigue. Sur des sols de sable, d'alluvions argileuses ou de cailloux roulés, **il donne son nom à la seule appellation rhodanienne à ne produire que du rosé**. **Grenache**, **cinsault**, **mourvèdre**, **syrah**, accompagnés de **carignan** et parfois de cépages blancs donnent un vin généreux, au bouquet floral puis fruité. Déjà réputé à l'époque des papes d'Avignon, le tavel est reconnaissable à sa bouteille élancée, gravée d'un T en écusson couronné. Il figure parmi les plus célèbres vins rosés de France.",
        rawWindow: "2 à 3 ans.\n",
        colors: [.rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`EB6E40F8-FFE7-4CE6-8121-60F4C5DDB173`,
            DefaultGrapeVariety.`1729215B-CBF6-4CEC-901C-66FB7C067817`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `47209B5E-0A79-43C4-9830-3C3B5E0351F0` = DefaultWineAppellation(
        id: UUID(uuidString: "47209B5E-0A79-43C4-9830-3C3B5E0351F0")!,
        name: "Côtes-du-Vivarais",
        description: "À la limite nord-ouest de la vallée du Rhône méridionale, les côtes-du-vivarais chevauchent les départements de l'Ardèche et du Gard. Ils sont implantés sur les plateaux qui encadrent les gorges de l'Ardèche. Les plants croissent dans la pierraille blanche. Le grenache et la syrah donnent naissance à des rouges et des rosés d'une finesse particulière, avec une dominante de petits fruits rouges.",
        rawWindow: "1 à 3 ans.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `DD2ACCFB-D574-40BF-B5A2-184A94DB7FDA` = DefaultWineAppellation(
        id: UUID(uuidString: "DD2ACCFB-D574-40BF-B5A2-184A94DB7FDA")!,
        name: "Laudun",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `685A0D2E-1A8A-4EFD-B38B-CEB19B3117E0` = DefaultWineAppellation(
        id: UUID(uuidString: "685A0D2E-1A8A-4EFD-B38B-CEB19B3117E0")!,
        name: "Duché D'Uzès",
        description: "Située entre la fraîcheur des**&nbsp;Cévennes et le soleil généreux de la Vallée du Rhône**, la dernière-née des AOC (2013) a d’abord fourni des vins de pays. Depuis 1989, les viticulteurs de l’Uzège œuvraient pour obtenir l’accession de leurs vins à l’appellation d’origine. Ils se sont fixés de nombreuses contraintes et n’ont pas ménagé les investissements sur leurs exploitations. L’appellation, fondée sur un cahier des charges strict, ne vise pas les volumes,**&nbsp;mais un vin haut de gamme.&nbsp;**\n\nElle livre des vins**&nbsp;rouges généreux, épicés et réglissés**, surtout marqués par la syrah et le grenache, des&nbsp;**rosés puissants et aromatiques**, marqués par le grenache, ainsi que des**&nbsp;blancs intenses**, aux arômes de pêche et d’abricot, issus de grenache blanc et de viognier.\n\n&nbsp;\n\n&nbsp;",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`2B77B7EB-6DE2-4D97-A002-2B49EA915FB3`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `CFEA6748-6A41-4AEB-A62C-10F965F09470` = DefaultWineAppellation(
        id: UUID(uuidString: "CFEA6748-6A41-4AEB-A62C-10F965F09470")!,
        name: "Pierrevert",
        description: "Le village médiéval de Pierrevert et dix communes, non loin de Manosque, situées dans la partie la plus chaude du département des Alpes-de-Haute-Provence, région chère à Jean Giono, ont accédé à l'AOC. Les vins rouges, rosés et blancs sont d'un degré alcoolique assez faible et d'une bonne nervosité?; ils s'associent parfaitement aux produits locaux&nbsp;: agneau et fromages de chèvre de Banon.",
        rawWindow: "Rouge : 2 à 5 ans Rosé et blanc : 1 à 3 ans.\n",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`CE099C03-B2A9-4804-9329-322968B344D7`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `3729BB09-D79C-495A-AF99-857097628952` = DefaultWineAppellation(
        id: UUID(uuidString: "3729BB09-D79C-495A-AF99-857097628952")!,
        name: "Cairanne",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `72C66B49-2730-4ADB-B219-05005456F69E` = DefaultWineAppellation(
        id: UUID(uuidString: "72C66B49-2730-4ADB-B219-05005456F69E")!,
        name: "Beaumes-de-Venise",
        description: "En 2005, les vins rouges de Beaumes-de-Venise, classés depuis 1979 en **côtes-du-rhône-villages**, accèdent au rang de cru des Côtes du Rhône et se placent aux côtés d'autres prestigieuses appellations communales, comme **châteauneuf-du-pape**, **vacqueyras** et **gigondas**. Jouxtant ces deux dernières AOC, Beaumes-de-Venise tire son nom des grottes (balmes en provençal) creusées dans les roches de la commune éponyme. Quant au nom de Venise, il est à relier au terme de «&nbsp;Comtat venaissin&nbsp;», possession des papes du XIII e&nbsp;siècle à la Révolution. L'aire géographique est délimitée au nord-est d'Avignon sur quatre communes du Vaucluse&nbsp;: Beaumes-de-Venise, Lafare, La Roque-Alric et Suzette. En partie implanté sur des restanques ou faysses (terrasses), sur des sols sablo-argileux, le vignoble occupe le versant sud des célèbres Dentelles de Montmirail, aux formes déchiquetées. Protégé du mistral par les reliefs avoisinants, il bénéficie d'un climat méditerranéen chaud, rafraîchi localement par une certaine altitude. L'appellation ne produit que des rouges issus majoritairement du grenache noir (50&nbsp;% minimum). Vendangés obligatoirement à la main et triés, ces raisins donnent naissance à des vins puissants et concentrés.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `FE6D6659-C4A6-4E43-AD75-D2004FB04D17` = DefaultWineAppellation(
        id: UUID(uuidString: "FE6D6659-C4A6-4E43-AD75-D2004FB04D17")!,
        name: "Vinsobres",
        description: "La destruction des oliviers par le gel de 1956 a relancé la viticulture et donné un nouvel élan à ce vignoble de la Drôme provençale qui entoure le village perché de Vinsobres. Cet ancien «&nbsp;village&nbsp;» des **côtes-du-rhône** a été promu en appellation communale en 2006. Situé sur les coteaux de la seule commune de Vinsobres, c'est le cru le plus septentrional de la **vallée du Rhône** méridionale. Installés sur des coteaux ou replats exposés au sud et au mistral, le vent du nord, les ceps plongent leurs racines dans des sols pierreux qui se réchauffent facilement. L'appellation concerne uniquement les vins rouges. Les vinsobres proviennent d'un assemblage d'au moins deux cépages principaux dont le **grenache**, qui doit représenter plus de 50&nbsp;% de l'encépagement; cépages complémentaires, la **syrah** et/ou le **mourvèdre** devant atteindre 25&nbsp;% minimum. Colorés, concentrés et corsés, ces vins possèdent une belle complexité aromatique et un intéressant potentiel de garde.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `4D0A291A-3487-4D2F-9E75-DA872BD7D985` = DefaultWineAppellation(
        id: UUID(uuidString: "4D0A291A-3487-4D2F-9E75-DA872BD7D985")!,
        name: "Rasteau Sec",
        description: "**L'appellation rasteau** a longtemps été réservée aux vins doux naturels, Rasteau étant aussi, depuis 1965, l'une des dénominations de **l'AOC côtes-du-rhône**, pouvant figurer sur l'étiquette. En 2010, Rasteau est devenue la seizième appellation communale de la vallée du Rhône, après **beaumes-de-venise,****vinsobres**, **vaqueyras** et **gigondas**. Son aire est délimitée sur la seule commune de Rasteau. Les vignes sont installées sur un plateau aux sols caillouteux, sur des collines et sur d'anciennes terrasses, encadrées par les rivières Aigues et Ouvèze. Les parcelles, exposées plein sud et souvent recouvertes de galets roulés qui accumulent la chaleur diurne pour la restituer la nuit, sont abritées du mistral. Le climat méditerranéen semi-aride de cette zone géographique est particulièrement favorable au **cépage grenache**, cépage principal de l'appellation mais toujours utilisé en assemblage. Il favorise également la **syrah** et le **mourvèdre**, variétés complémentaires qui donnent des vins concentrés et charpentés. Exclusivement rouges, les rasteau secs sont généreux, puissants, gras et très aromatiques. Leur structure tannique est le gage d'un excellent potentiel de garde.",
        rawWindow: "3 à 6 ans (jusqu’à 10 ans pour les grands millésimes).\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`31EBBC57-504E-40F2-A448-BC86C3873A37`
    )

    static let `E05078B7-7E6C-4798-92BB-3D5F270AEE2B` = DefaultWineAppellation(
        id: UUID(uuidString: "E05078B7-7E6C-4798-92BB-3D5F270AEE2B")!,
        name: "Château-Grillet",
        description: "Au sud de Vienne, sur la rive droite du Rhône, l'appellation château-grillet est un cas rare dans la viticulture française puisqu'elle n'est produite que par un seul domaine. Elle ne connaît en outre que le seul cépage viognier, planté sur d'étroites terrasses. Il faut prendre le temps de humer ce vin, car une bonne aération est nécessaire pour que tous ses parfums se libèrent. Le château-grillet peut se boire jeune, mais acquiert en vieillissant des arômes qui en font un vin idéal sur le poisson.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `7E1E1EF0-F0E8-4F51-8C5B-AC4F456C5A78` = DefaultWineAppellation(
        id: UUID(uuidString: "7E1E1EF0-F0E8-4F51-8C5B-AC4F456C5A78")!,
        name: "Coteaux-de-Die",
        description: "L'aire délimitée du vignoble se confond avec celle de **l'AOC clairette-de-die**, sur 31 communes du département de la Drôme. Vins blancs tranquilles issus à 100&nbsp;% du **cépage clairette**, les coteaux-de-die ont été reconnus par le décret du 26 mars 1993. Uniquement élaborés dans des millésimes favorables, ces vins confidentiels sont à rechercher sur place.&nbsp;",
        rawWindow: "1 à 2 ans",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `2AA335BC-0216-4EC3-A7F3-181729517C35` = DefaultWineAppellation(
        id: UUID(uuidString: "2AA335BC-0216-4EC3-A7F3-181729517C35")!,
        name: "Saint-Péray",
        description: "Le vignoble de saint-péray s'inscrit comme le dernier vignoble de la vallée du Rhône septentrionale. À l'extrême sud de cette région, il est protégé des vents du nord, alors même que la vallée du Mialan est ouverte au septentrion. Il produit des vins blancs, dont 70&nbsp;% sont élaborés en effervescent. Les terrains granitiques confèrent en effet un style original à ces vins mousseux, plus vineux et moins vifs que les autres effervescents français.",
        rawWindow: "Blanc effervescent : à boire jeune.\n Blanc tranquille : 2 à 10 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `8AFBEF20-AF9C-4C42-AD15-9C6A0B7B477A` = DefaultWineAppellation(
        id: UUID(uuidString: "8AFBEF20-AF9C-4C42-AD15-9C6A0B7B477A")!,
        name: "Crozes-Hermitage",
        description: "Au nord et au sud de Tain-l'Hermitage, les vignes de crozes-hermitage entourent l'appellation hermitage. Dans cette vaste zone, relativement plane, la surface du vignoble, en expansion, est aujourd'hui pratiquement équivalente à celle des pêchers. Les différents affleurements géologiques apportent une certaine diversité aux vins; **le cépage syrah** règne en maître dans les vins rouges fruités, tandis que la **marsanne**, grand cépage des blancs, produit des vins frais et agréables à boire.",
        rawWindow: "2 à 5 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `E81E9D70-27D6-4D4D-8B6A-9252090E32AC` = DefaultWineAppellation(
        id: UUID(uuidString: "E81E9D70-27D6-4D4D-8B6A-9252090E32AC")!,
        name: "Crémant-de-Die",
        description: "**Le vignoble est implanté au sud-est de Valence et au pied du Vercors.** Les parcelles s'éparpillent le long de la vallée de la Drôme, sur 31&nbsp;communes –&nbsp;un territoire que le crémant partage avec l'appellation beaucoup plus ancienne de la **clairette-de-die**. Paradoxalement, cette dernière, dans sa version ancestrale, est issue majoritairement de **muscat à petits grains**, **la clairette étant le cépage privilégié du crémant-de-die**. Naguère exclusive, cette variété a fait une place à l'aligoté et au muscat blanc à petits grains, dans une moindre mesure. Le crémant-de-die est élaboré selon la méthode traditionnelle qui consiste en une seconde fermentation en bouteille, un élevage sur lies suivi d'un dégorgement, la commercialisation intervenant un an après le tirage. La mousse est fine et légère, les arômes à dominante de fruits verts.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `1B524C7E-E4F4-41BA-97DA-B787727961C4` = DefaultWineAppellation(
        id: UUID(uuidString: "1B524C7E-E4F4-41BA-97DA-B787727961C4")!,
        name: "Côte-Rôtie",
        description: "Ce vignoble, qui est le plus ancien de la vallée du Rhône, serait le site originel de la culture de la vigne en Gaule. À quelques kilomètres au sud de Vienne, la vigne s'accroche aux pentes très abruptes de la Côte Brune et de la Côte Blonde, orientées sud-sud-est sur la rive droite du Rhône&nbsp;: côte-rôtie est bien l'image de ces coteaux brûlés par le soleil pendant la saison estivale. L'appellation se répartit sur les communes d'Ampuis, Saint-Cyr-sur-Rhône et Tupins-Sémons; elle ne produit que des vins rouges issus majoritairement de la **syrah** qui apporte de la structure et des arômes complexes de violette, d'épices et de fruits. Avec l'âge, ces vins gagnent une ampleur exceptionnelle.",
        rawWindow: "5 à 20 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `FF098574-1B78-4614-BA80-36214FBBEAB1` = DefaultWineAppellation(
        id: UUID(uuidString: "FF098574-1B78-4614-BA80-36214FBBEAB1")!,
        name: "Cornas",
        description: "Au nord-ouest de Valence, le village de Cornas est bâti dans un grandiose amphithéâtre aux gradins abrupts. Son vignoble est implanté sur un versant où affleurent des granites qui, par décomposition, ont donné naissance à des sables argileux. Cornas, comme **l'appellation côte-rôtie**, ne produit que des vins rouges. Toutefois, elle se distingue parmi les grandes appellations rouges de la vallée du Rhône septentrionale par son terroir précoce et par la présence d'un cépage unique, la **syrah**. Il en résulte un «&nbsp;vin noir&nbsp;», de grande structure, puissant et charpenté, dont les tanins s'assouplissent au cours des ans.",
        rawWindow: "5 à 20 ans.\n",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `ECA4353F-1F3D-452D-9D5B-1587E5072FB8` = DefaultWineAppellation(
        id: UUID(uuidString: "ECA4353F-1F3D-452D-9D5B-1587E5072FB8")!,
        name: "Clairette-de-Die",
        description: "Au sud-est de Valence, le Diois abrite l'un des vignobles les plus hauts de France, abrité par les falaises du Vercors et bénéficiant d'influences méditerranéennes qui permettent une bonne maturation du **muscat à petits grains**. Il produit sur les deux rives de la vallée de la Drôme trois appellations&nbsp;: la **clairette-de-die**, le **crémant-de-die** (vins effervescents) et le **châtillon-en-diois**.\n\n## La Clairette de Die\n\nLa première fournit l'essentiel des volumes. Si elle résulte de la méthode traditionnelle, avec deuxième fermentation en bouteilles, la **clairette-de-die** provient uniquement du **cépage clairette**; si elle est élaborée selon la méthode ancestrale ou dioise, elle privilégie largement le muscat, la clairette apportant acidité et finesse. Majoritaire, cette seconde version est le porte-drapeau de l'AOC.",
        rawWindow: "À boire jeune.\n",
        colors: [],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `B73F1CD1-964C-448C-B464-F2E343128983` = DefaultWineAppellation(
        id: UUID(uuidString: "B73F1CD1-964C-448C-B464-F2E343128983")!,
        name: "Saint-Joseph",
        description: "L'AOC saint-joseph s'étend sur vingt-six communes de la rive droite du Rhône, réparties en un étroit ruban de terroirs sur environ 60 km, selon un axe nord-sud. Aussi n'est-il pas surprenant de constater une relative diversité dans la typicité des saint-joseph. L'appellation fait la liaison entre les **AOC condrieu**&nbsp;et **côte-rôtie** au nord, et celle de **cornas** au sud. En coteau, face au versant de l'**Hermitage**, le vignoble est implanté sur des terrains de granites, de gneiss, de micaschistes, soutenus par des murets. Il est à l'origine de vins rouges tendres ou solides et puissants selon leur provenance, et de vins blancs racés.",
        rawWindow: "3 à 10 ans.\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `F33B1C96-9596-4C80-A63F-35E8C4AA02C7` = DefaultWineAppellation(
        id: UUID(uuidString: "F33B1C96-9596-4C80-A63F-35E8C4AA02C7")!,
        name: "Hermitage",
        description: "Au nord-est de Tain-l'Hermitage, sur la rive gauche du Rhône, le vignoble de l'Hermitage s'accroche à un magnifique coteau escarpé où s'inscrivent les noms de négociants réputés, tels Jaboulet ou Chapoutier. Déjà célèbre à l'époque romaine, il doit plus encore sa renommée à un chevalier légendaire qui, de retour de croisades, se serait retiré près de la chapelle de l'Hermitage et y aurait planté des ceps. **La syrah donne naissance à de fabuleux vins rouges de garde**. Les vins blancs sont également capables d'évoluer durant plusieurs années. **L'AOC fournit aussi des volumes confidentiels de vin de paille**.",
        rawWindow: "Rouge : 5 à 20 ans (30 ans pour les grands millésimes).\nBlanc : 3 à 5 ans (plus pour les grands millésimes).\n",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `52CA958E-F009-4075-8EAE-8FA938F80DF4` = DefaultWineAppellation(
        id: UUID(uuidString: "52CA958E-F009-4075-8EAE-8FA938F80DF4")!,
        name: "Condrieu",
        description: "À une dizaine de kilomètres au sud de Vienne, le vignoble s'étend sur le rebord du Massif central qui descend en coteaux abrupts vers la rive droite du Rhône. Condrieu, aux allures de petit port méditerranéen, possède des vignes qui s'inscrivent historiquement dans le prolongement de celles de **côte-rôtie**. L'appellation ne produit que des vins blancs délicats et onctueux élaborés à partir du seul cépage autorisé, le viognier.",
        rawWindow: "1 à 5 ans.\n",
        colors: [.white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `30854320-ADAA-46B9-B90D-8C2020DD4666` = DefaultWineAppellation(
        id: UUID(uuidString: "30854320-ADAA-46B9-B90D-8C2020DD4666")!,
        name: "Châtillon-en-Diois",
        description: "Très ancien, ce petit vignoble de montagne occupe au sud du massif du Vercors les versants bien exposés&nbsp;de la haute vallée de la Drôme, en amont de Die, entre les Préalpes drômoises et la Provence. Il grimpe jusqu'à 500, voire 600&nbsp;m d'altitude. Adossé au Dôme du Glandasse culminant à plus de 2?000&nbsp;m –&nbsp;la falaise du Vercors qui l'abrite des vents du nord –&nbsp;le coteau de Chatillon-en-Diois domine la vallée du Bez, affluent de la Drôme. C'est dans cette commune&nbsp;et ses environs immédiats que naissent les vins rouges, alors que les blancs proviennent de toute l'aire d'appellation, délimitée sur le territoire de douze villages qui produisent aussi de la **clairette-de-die** ou du **crémant-de-die**. Adouci par quelques influences méditerranéennes, le climat montagnard a favorisé l'implantation de cépages septentrionaux. L'AOC produit à partir d'une majorité de **gamay**, des vins rouges, légers et fruités, à consommer jeunes, des vins rosés frais et friands, et à partir de l'aligoté et du chardonnay, des vins blancs secs d'une agréable nervosité.",
        rawWindow: "Blanc et rouge : 2 à 3 ans.\nRosé : à boire jeune.\n",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`304C4E2D-905C-43F1-9BC8-EB1C933F1D66`,
            DefaultGrapeVariety.`8E6E93CD-498C-420E-8EAF-4FD90F635FA0`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`
        ],
        region: DefaultWineRegion.`881ECE13-1644-4EEE-95BC-BEE4B9A8210D`
    )

    static let `D0325C95-89EA-43D4-8D3F-1FC61EBBB325` = DefaultWineAppellation(
        id: UUID(uuidString: "D0325C95-89EA-43D4-8D3F-1FC61EBBB325")!,
        name: "Côtes-du-Rhône-Villages",
        description: "Les côtes-du-rhône-villages n'existent que dans la partie méridionale de l'appellation et concernent quatre départements&nbsp;: l'Ardèche, la Drôme, le Gard et le Vaucluse, sous un climat méditerranéen marqué par une sécheresse non seulement estivale mais aussi hivernale, et par un vent violent, le mistral, qui souffle parfois plus de deux cents jours par an. La plupart des sols sont ici de nature calcaire. La variabilité dans leur texture, leur régime hydrique, leur fertilité, combinée aux aspects microclimatiques liés à l'exposition expliquent que les côtes-du-rhône-villages montrent, suivant les sous-régions productrices, des nuances. Les-côtes-du-rhône-villages se distinguent des **côtes-du-rhône** par leur caractère généreux, typé et leur aptitude à la garde.",
        rawWindow: "Rouge : 2 à 8 ans.\nRosé : à boire jeune.\nBlanc : 1 à 4 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`AB78EE05-7DAA-4117-914C-B8E3C2DE6872`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`
        ],
        region: DefaultWineRegion.`F5E7E4C9-BE3F-4E50-8773-1152E9FCC7C4`
    )

    static let `880DDB63-6A76-4B5C-A8B6-97862E5338FE` = DefaultWineAppellation(
        id: UUID(uuidString: "880DDB63-6A76-4B5C-A8B6-97862E5338FE")!,
        name: "Côtes-du-Rhône",
        description: "Sur 200&nbsp;km, entre Vienne et Avignon, la vallée du Rhône possède la plus vaste appellation régionale après Bordeaux; c'est aussi l'une des plus anciennes appellations d'origine contrôlée. Elle s'étend sur 163&nbsp;communes réparties entre six départements (Rhône, Loire, Drôme, Ardèche, Gard et Vaucluse). Les vignobles du nord se consacrent à la production d'appellations communales (**côte-rôtie**, **condrieu**...); les côtes-du-rhône –&nbsp;qui ne sont pas des vins de garde –&nbsp;proviennent surtout de la partie méridionale, entre Bollène et Avignon. Sur la rive gauche du Rhône, les sols de galets mêlés à des argiles sableuses rouges sont d'excellents terroirs pour la vigne. Les vins rouges, largement majoritaires, revêtent une grande diversité qui répond à celle des sols et des microclimats.",
        rawWindow: "Rouge : 2 à 4 ans.\nRosé : à boire jeune.\nBlanc : 1 à 3 ans.\n",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`EA49D56F-5C4A-4E56-B42A-39F3079F13AB`,
            DefaultGrapeVariety.`AB78EE05-7DAA-4117-914C-B8E3C2DE6872`,
            DefaultGrapeVariety.`FA056754-9E04-4FDD-8C41-3D89F58F78BB`,
            DefaultGrapeVariety.`682FEDAF-AE24-4F94-AF0B-EF1245B3B7EC`,
            DefaultGrapeVariety.`8BDFB6AB-F2D0-44FA-902F-6D521CBDD6A9`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`,
            DefaultGrapeVariety.`6B71CD35-0F57-4AEA-A29D-B8FBFC9DE8FD`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`,
            DefaultGrapeVariety.`41E0CA72-9950-440A-A0B7-A744A602A347`,
            DefaultGrapeVariety.`38ED64EE-A70D-4A76-A5EC-C83EA0119887`
        ],
        region: DefaultWineRegion.`F5E7E4C9-BE3F-4E50-8773-1152E9FCC7C4`
    )

    static let `CED3B99E-BE40-422B-81AD-2B87E89CE43A` = DefaultWineAppellation(
        id: UUID(uuidString: "CED3B99E-BE40-422B-81AD-2B87E89CE43A")!,
        name: "Rasteau",
        description: "Au nord d'Avignon, séparé de **Beaumes-de-Venise** par **Gigondas**, entre Aygues et Ouvèze, le vignoble de l'AOC rasteau est adossé aux derniers contreforts du massif des Baronnies. Ainsi protégés, les ceps s'établissent jusqu'à quelque 300&nbsp;m d'altitude. Seules les vieilles vignes de **grenache** les mieux exposées, conduites à petits rendements, conviennent à la production de ce vin doux naturel, dont la puissance et l'onctuosité résultent de l'ajout d'alcool vinique sur le moût en fermentation. Le rasteau se décline désormais en trois couleurs et plusieurs styles, selon le type d'élevage (à l'abri de l'air ou oxydatif) et sa longueur : grenat, tuilé, rosé, blanc, ambré, hors d'âge, rancio.",
        rawWindow: "10 ans et plus.\n",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`28D22B3F-9A7F-4B01-B671-BE4A699036E6`,
            DefaultGrapeVariety.`BB98B894-54F4-41E6-9AB0-F66CAD23D906`,
            DefaultGrapeVariety.`0A43DAF5-D8EC-46CA-A42E-66EF722772AC`
        ],
        region: DefaultWineRegion.`D2DC217F-E314-49E2-B519-D34EB53CF759`
    )

    static let `A1EEB60C-465B-4764-9AEB-7A5A255F4BD5` = DefaultWineAppellation(
        id: UUID(uuidString: "A1EEB60C-465B-4764-9AEB-7A5A255F4BD5")!,
        name: "Muscat-de-Beaumes-de-Venise",
        description: "**Au nord-est d'Avignon, Châteauneuf-du-Pape,&nbsp;Vacqueyras et&nbsp;Gigondas servent d'écrin au terroir de Beaumes-de-Venise sur fond de mont Ventoux**. À l'écart de l'axe rhodanien, les muscatières de Beaumes-de-Venise et les parcelles retenues sur Aubignan s'étagent depuis les bords de la Salette jusqu'au pied des Dentelles de Montmirail. Dans les sols profonds, très aérés, le **muscat** puise toute sa finesse et donne naissance à un vin doux naturel de grande élégance.",
        rawWindow: "2 à 10 ans.\n",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`A62BF67D-EB30-4AC0-BBD6-B3610D19A0AC`
        ],
        region: DefaultWineRegion.`D2DC217F-E314-49E2-B519-D34EB53CF759`
    )

    static let `7F26AC7C-33E7-4A58-8BD3-0324B6A45F92` = DefaultWineAppellation(
        id: UUID(uuidString: "7F26AC7C-33E7-4A58-8BD3-0324B6A45F92")!,
        name: "IGP Comtés Rhodaniens",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `24CFE652-A26C-45DC-91F0-3B4E50AA5A90` = DefaultWineAppellation(
        id: UUID(uuidString: "24CFE652-A26C-45DC-91F0-3B4E50AA5A90")!,
        name: "IGP Balmes Dauphinoises",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `45C7F63F-2CF7-4D0E-B969-E07DD7C4CDDE` = DefaultWineAppellation(
        id: UUID(uuidString: "45C7F63F-2CF7-4D0E-B969-E07DD7C4CDDE")!,
        name: "IGP Coteaux du Grésivaudan",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `22985F40-6625-47D5-8C68-825D4B8EB92F` = DefaultWineAppellation(
        id: UUID(uuidString: "22985F40-6625-47D5-8C68-825D4B8EB92F")!,
        name: "IGP Comté de Grignan",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `8E066DD5-A43C-4F8D-942C-E642D1804376` = DefaultWineAppellation(
        id: UUID(uuidString: "8E066DD5-A43C-4F8D-942C-E642D1804376")!,
        name: "IGP Coteaux de L'Ardèche",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `6CCF9C03-FB5C-47EC-9745-8F27366D8BE8` = DefaultWineAppellation(
        id: UUID(uuidString: "6CCF9C03-FB5C-47EC-9745-8F27366D8BE8")!,
        name: "IGP Isère",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `0B569BFD-9DBE-400F-BABE-E22B61BC9601` = DefaultWineAppellation(
        id: UUID(uuidString: "0B569BFD-9DBE-400F-BABE-E22B61BC9601")!,
        name: "IGP Collines Rhodaniennes",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `5E2EB867-B05A-4F4E-9FF1-43F5DDB8AD09` = DefaultWineAppellation(
        id: UUID(uuidString: "5E2EB867-B05A-4F4E-9FF1-43F5DDB8AD09")!,
        name: "IGP Drôme",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `5311699F-9D3A-4214-B807-288D02AB1FF2` = DefaultWineAppellation(
        id: UUID(uuidString: "5311699F-9D3A-4214-B807-288D02AB1FF2")!,
        name: "IGP Coteaux des Baronnies",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `C889D871-426E-43B5-BF84-B4C08E11CB2D` = DefaultWineAppellation(
        id: UUID(uuidString: "C889D871-426E-43B5-BF84-B4C08E11CB2D")!,
        name: "Vins de Pays IGP Vins des Allobroges",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `1E8BFA1F-11BA-44D9-8848-22470C768B34` = DefaultWineAppellation(
        id: UUID(uuidString: "1E8BFA1F-11BA-44D9-8848-22470C768B34")!,
        name: "IGP Coteaux de Montélimar",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `233074CF-98F7-4D9C-80A9-BE1A7A2B575C` = DefaultWineAppellation(
        id: UUID(uuidString: "233074CF-98F7-4D9C-80A9-BE1A7A2B575C")!,
        name: "IGP Ardèche",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `1050A170-4A49-4E92-BF64-AF9B36AB049E` = DefaultWineAppellation(
        id: UUID(uuidString: "1050A170-4A49-4E92-BF64-AF9B36AB049E")!,
        name: "IGP Urfé",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `7D6DDED0-41D7-4823-B40F-A7253D47BD93` = DefaultWineAppellation(
        id: UUID(uuidString: "7D6DDED0-41D7-4823-B40F-A7253D47BD93")!,
        name: "IGP Alpilles",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`74671C2B-5D9F-47BD-81C2-A5907269EE5D`
    )

    static let `20AB9179-A123-45BE-8298-CAA235374877` = DefaultWineAppellation(
        id: UUID(uuidString: "20AB9179-A123-45BE-8298-CAA235374877")!,
        name: "IGP Dordogne",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `71579932-FB87-47A9-B1EB-D72C73306F9E` = DefaultWineAppellation(
        id: UUID(uuidString: "71579932-FB87-47A9-B1EB-D72C73306F9E")!,
        name: "IGP Atlantique",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `D9ACADDD-E6C1-4427-8B6A-499AB61FEE16` = DefaultWineAppellation(
        id: UUID(uuidString: "D9ACADDD-E6C1-4427-8B6A-499AB61FEE16")!,
        name: "IGP Charentais",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `D052B3A2-1F1F-4B45-AE7E-D1CF4827C7D9` = DefaultWineAppellation(
        id: UUID(uuidString: "D052B3A2-1F1F-4B45-AE7E-D1CF4827C7D9")!,
        name: "IGP Thézac-Perricard",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `3C1A66EA-C0D1-47F5-AD7A-2BA1BB7738FF` = DefaultWineAppellation(
        id: UUID(uuidString: "3C1A66EA-C0D1-47F5-AD7A-2BA1BB7738FF")!,
        name: "IGP Périgord",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `8F6A62BE-A70B-4880-81FE-2DE5F319CCB0` = DefaultWineAppellation(
        id: UUID(uuidString: "8F6A62BE-A70B-4880-81FE-2DE5F319CCB0")!,
        name: "IGP Agenais",
        description: "Dès l'Antiquité, les vignerons de la région ont élaboré des vins liquoreux de haute renommée. Au XIII es., Arnaud de Villeneuve découvrit le mariage miraculeux de la «&nbsp;liqueur de raisin et de son eau-de-vie&nbsp;»&nbsp;: c'est le principe du mutage qui, appliqué en pleine fermentation sur des vins rouges ou blancs, arrête celle-ci en préservant ainsi une certaine quantité de sucre naturel.Les vins doux naturels d'appellation contrôlée se répartissent dans la France méridionale&nbsp;: Pyrénées-Orientales, Aude, Hérault, Vaucluse et Corse, jamais bien loin de la Méditerranée. Les cépages utilisés sont le grenache (blanc, gris, noir), le macabeu, la malvoisie du Roussillon, dite tourbat, le muscat à petits grains et le muscat d'Alexandrie. La taille courte est obligatoire.Les rendements sont faibles et les raisins doivent, à la récolte, avoir une richesse en sucre de 252&nbsp;g minimum par litre de moût. L'agrément des vins est obtenu après un contrôle analytique. Ils doivent présenter un taux d'alcool acquis de 15 à 18&nbsp;%&nbsp;vol., une richesse en sucre de 45&nbsp;g minimum à plus de 100&nbsp;g pour certains muscats et un taux d'alcool total (alcool acquis plus alcool en puissance) de 21,5&nbsp;% vol. minimum. Certains sont commercialisés tôt (muscats), d'autres le sont après trente mois d'élevage. Vieillis sous bois de manière traditionnelle, c'est-à-dire dans des fûts, ils acquièrent parfois après un long élevage des notes très appréciées de rancio.",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `23D0EC95-7E71-4D4D-B18E-C34E08E216D3` = DefaultWineAppellation(
        id: UUID(uuidString: "23D0EC95-7E71-4D4D-B18E-C34E08E216D3")!,
        name: "IGP Terroirs Landais",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `E0CB0597-AC93-4648-A263-FC035820BB30` = DefaultWineAppellation(
        id: UUID(uuidString: "E0CB0597-AC93-4648-A263-FC035820BB30")!,
        name: "IGP Landes",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`ACE8B757-E7C6-49A7-A3AA-0D92E74CCB57`
    )

    static let `5310368D-B278-4240-A9A5-2C34BC9D72EE` = DefaultWineAppellation(
        id: UUID(uuidString: "5310368D-B278-4240-A9A5-2C34BC9D72EE")!,
        name: "IGP Bénovie",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `2C99B68F-2A20-4A52-9438-BB4416990BD1` = DefaultWineAppellation(
        id: UUID(uuidString: "2C99B68F-2A20-4A52-9438-BB4416990BD1")!,
        name: "IGP Coteaux du Salavès",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `82EA5489-A65E-4745-AD41-3FEAE146EC25` = DefaultWineAppellation(
        id: UUID(uuidString: "82EA5489-A65E-4745-AD41-3FEAE146EC25")!,
        name: "IGP Caux",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `30FAB3EE-F847-4020-ADA0-C172D06A6568` = DefaultWineAppellation(
        id: UUID(uuidString: "30FAB3EE-F847-4020-ADA0-C172D06A6568")!,
        name: "IGP Pyrénées-Orientales",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `A4EEB29F-D5E0-4405-8930-90573F5AFB70` = DefaultWineAppellation(
        id: UUID(uuidString: "A4EEB29F-D5E0-4405-8930-90573F5AFB70")!,
        name: "IGP Monts de la Grage",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`45E684EA-B8EA-4E00-B0F8-22914A84834F`
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `B69A6E55-4ACB-4A58-B91C-A2E1B22C9971` = DefaultWineAppellation(
        id: UUID(uuidString: "B69A6E55-4ACB-4A58-B91C-A2E1B22C9971")!,
        name: "IGP Coteaux de Laurens",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `78E78BF5-EBFB-41C1-8280-F337FA877A28` = DefaultWineAppellation(
        id: UUID(uuidString: "78E78BF5-EBFB-41C1-8280-F337FA877A28")!,
        name: "Igpcoteaux de Miramont",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `740BBA08-5766-4C35-BBA1-438AC5AFCE56` = DefaultWineAppellation(
        id: UUID(uuidString: "740BBA08-5766-4C35-BBA1-438AC5AFCE56")!,
        name: "IGP Aude",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `333089A7-7929-4558-87FC-36A2CED40BC7` = DefaultWineAppellation(
        id: UUID(uuidString: "333089A7-7929-4558-87FC-36A2CED40BC7")!,
        name: "IGP Cévennes",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `56BCDC5F-4468-48AA-A9BD-9E80BADB8522` = DefaultWineAppellation(
        id: UUID(uuidString: "56BCDC5F-4468-48AA-A9BD-9E80BADB8522")!,
        name: "IGP Sables du Golfe du Lion",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `7E5861B7-A6BF-4ECC-80B0-82EFBB0A33A5` = DefaultWineAppellation(
        id: UUID(uuidString: "7E5861B7-A6BF-4ECC-80B0-82EFBB0A33A5")!,
        name: "IGP Côtes de Thau",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `E61D62CC-E407-4EB7-87AF-5C7681EDD14F` = DefaultWineAppellation(
        id: UUID(uuidString: "E61D62CC-E407-4EB7-87AF-5C7681EDD14F")!,
        name: "IGP Lastours",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `651158CD-0314-4F40-AD33-2A6FBAE16B4F` = DefaultWineAppellation(
        id: UUID(uuidString: "651158CD-0314-4F40-AD33-2A6FBAE16B4F")!,
        name: "IGP Haute Vallée de L'Orb",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `B7124985-FAFE-4351-AFC0-D562CF68D76D` = DefaultWineAppellation(
        id: UUID(uuidString: "B7124985-FAFE-4351-AFC0-D562CF68D76D")!,
        name: "IGP Coteaux de Peyriac",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `17399762-226F-49DC-B2F3-783CDEE7E8BE` = DefaultWineAppellation(
        id: UUID(uuidString: "17399762-226F-49DC-B2F3-783CDEE7E8BE")!,
        name: "IGP Coteaux de Bessilles",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `4B33370B-4774-4D7A-ABF5-6FE4C24463E5` = DefaultWineAppellation(
        id: UUID(uuidString: "4B33370B-4774-4D7A-ABF5-6FE4C24463E5")!,
        name: "IGP Coteaux du Salagou",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `4DF5C4A8-E4FE-4160-96DC-F9EA5152E04E` = DefaultWineAppellation(
        id: UUID(uuidString: "4DF5C4A8-E4FE-4160-96DC-F9EA5152E04E")!,
        name: "IGP Haute Vallée de L'Aude",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `1FD364F6-0EDB-4160-9143-36552045A651` = DefaultWineAppellation(
        id: UUID(uuidString: "1FD364F6-0EDB-4160-9143-36552045A651")!,
        name: "IGP Coteaux de Béziers",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `A232AD0F-EAB4-4D9A-93AC-D24DFC4401EC` = DefaultWineAppellation(
        id: UUID(uuidString: "A232AD0F-EAB4-4D9A-93AC-D24DFC4401EC")!,
        name: "IGP Collines de la Moure",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `C29814CD-F3F2-4648-AD7F-DCAB1C6E3329` = DefaultWineAppellation(
        id: UUID(uuidString: "C29814CD-F3F2-4648-AD7F-DCAB1C6E3329")!,
        name: "IGP Catalan",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `B86B915D-AC2A-492E-A46E-75B03BAD93BA` = DefaultWineAppellation(
        id: UUID(uuidString: "B86B915D-AC2A-492E-A46E-75B03BAD93BA")!,
        name: "IGP Val de Montferrand",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `072E1640-A63A-4DD2-97A0-7CB50509748D` = DefaultWineAppellation(
        id: UUID(uuidString: "072E1640-A63A-4DD2-97A0-7CB50509748D")!,
        name: "IGP Pays D'Oc",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `9FD7ABAF-1E8A-4300-89C5-31492DF38BFC` = DefaultWineAppellation(
        id: UUID(uuidString: "9FD7ABAF-1E8A-4300-89C5-31492DF38BFC")!,
        name: "IGP Hérault",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `98525671-567A-4D28-B17B-AD81AD1749EF` = DefaultWineAppellation(
        id: UUID(uuidString: "98525671-567A-4D28-B17B-AD81AD1749EF")!,
        name: "IGP Côtes Catalanes",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `3589E6AC-8AEA-4027-965E-4D00853B46A1` = DefaultWineAppellation(
        id: UUID(uuidString: "3589E6AC-8AEA-4027-965E-4D00853B46A1")!,
        name: "IGP Coteaux des Fenouillèdes",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `189368EF-B44F-422C-BFB1-1F2C05E5C2F9` = DefaultWineAppellation(
        id: UUID(uuidString: "189368EF-B44F-422C-BFB1-1F2C05E5C2F9")!,
        name: "IGP Côtes de Thongue",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `C916071E-BD2C-4408-93E1-A5AD4E762D7F` = DefaultWineAppellation(
        id: UUID(uuidString: "C916071E-BD2C-4408-93E1-A5AD4E762D7F")!,
        name: "IGP Coteaux de Murviel",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `2FA45CBE-BA46-4F52-ADF5-86FD247F6A84` = DefaultWineAppellation(
        id: UUID(uuidString: "2FA45CBE-BA46-4F52-ADF5-86FD247F6A84")!,
        name: "IGP Hauts de Badens",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `7AE64A7F-88D6-44E7-A709-36032824BABC` = DefaultWineAppellation(
        id: UUID(uuidString: "7AE64A7F-88D6-44E7-A709-36032824BABC")!,
        name: "IGP Hauterive",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `BE6A7E7C-9C70-45D6-ACC0-D5548B71A1BC` = DefaultWineAppellation(
        id: UUID(uuidString: "BE6A7E7C-9C70-45D6-ACC0-D5548B71A1BC")!,
        name: "IGP Grand-Roussillon",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `72044FC3-4D5E-4FA8-B623-71C91E044B24` = DefaultWineAppellation(
        id: UUID(uuidString: "72044FC3-4D5E-4FA8-B623-71C91E044B24")!,
        name: "Igpcoteaux de Fontcaude",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `28E9FEC3-4924-45D2-904C-8BA0C11E3555` = DefaultWineAppellation(
        id: UUID(uuidString: "28E9FEC3-4924-45D2-904C-8BA0C11E3555")!,
        name: "IGP Gard",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `6636B99E-3519-46A1-8DC9-1B23C1F13E7F` = DefaultWineAppellation(
        id: UUID(uuidString: "6636B99E-3519-46A1-8DC9-1B23C1F13E7F")!,
        name: "IGP Torgan",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `7B0011D5-3437-4B7E-91A3-66B0CE0ED179` = DefaultWineAppellation(
        id: UUID(uuidString: "7B0011D5-3437-4B7E-91A3-66B0CE0ED179")!,
        name: "IGP Cassan",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `962D819F-1043-4883-8361-FD94C5199C56` = DefaultWineAppellation(
        id: UUID(uuidString: "962D819F-1043-4883-8361-FD94C5199C56")!,
        name: "IGP Coteaux D'Ensérune",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `09F663D8-9728-4A06-9E1E-71C462D764D9` = DefaultWineAppellation(
        id: UUID(uuidString: "09F663D8-9728-4A06-9E1E-71C462D764D9")!,
        name: "IGP Côtes du Ceressou",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `2677CE1E-267A-48BE-9253-72502F14FF58` = DefaultWineAppellation(
        id: UUID(uuidString: "2677CE1E-267A-48BE-9253-72502F14FF58")!,
        name: "IGP Cathare",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `30192FF9-6539-4ECC-8F8F-F1428863298D` = DefaultWineAppellation(
        id: UUID(uuidString: "30192FF9-6539-4ECC-8F8F-F1428863298D")!,
        name: "IGP Côtes de Pérignan",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `78BA8F88-1E35-4C31-BBB6-CAC74C86CED8` = DefaultWineAppellation(
        id: UUID(uuidString: "78BA8F88-1E35-4C31-BBB6-CAC74C86CED8")!,
        name: "IGP Hautes Vallées de L'Aude",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `95B1859D-0637-448C-83AD-C75E40297563` = DefaultWineAppellation(
        id: UUID(uuidString: "95B1859D-0637-448C-83AD-C75E40297563")!,
        name: "IGP Vicomté D'Aumélas",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `D5483509-5A41-4041-8F8E-006B34BA3F48` = DefaultWineAppellation(
        id: UUID(uuidString: "D5483509-5A41-4041-8F8E-006B34BA3F48")!,
        name: "IGP Cité de Carcassonne",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `42519D85-48F9-4219-8BD5-BB2A43FA3C2F` = DefaultWineAppellation(
        id: UUID(uuidString: "42519D85-48F9-4219-8BD5-BB2A43FA3C2F")!,
        name: "IGP Mont Baudile",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `C1DDE9BF-663B-4DBE-9D6F-F59FC7D2E633` = DefaultWineAppellation(
        id: UUID(uuidString: "C1DDE9BF-663B-4DBE-9D6F-F59FC7D2E633")!,
        name: "IGP Cessenon",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `574739B5-F394-4DB6-82CC-FC6C0D4C808A` = DefaultWineAppellation(
        id: UUID(uuidString: "574739B5-F394-4DB6-82CC-FC6C0D4C808A")!,
        name: "IGP Côtes du Brian",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `CFB25C3D-3C0F-493D-AC94-1CD126043F30` = DefaultWineAppellation(
        id: UUID(uuidString: "CFB25C3D-3C0F-493D-AC94-1CD126043F30")!,
        name: "IGP Val de Cesse",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `B18FAF00-2B2F-4652-9E8F-0FB13A3FA087` = DefaultWineAppellation(
        id: UUID(uuidString: "B18FAF00-2B2F-4652-9E8F-0FB13A3FA087")!,
        name: "IGP Bessan",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `8DC99C41-2EDD-462E-B117-3A76E65A48D2` = DefaultWineAppellation(
        id: UUID(uuidString: "8DC99C41-2EDD-462E-B117-3A76E65A48D2")!,
        name: "Igpcoteaux de Narbonne",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `1C53E54D-EB38-4A50-8E0D-C5CC7DB9A0AA` = DefaultWineAppellation(
        id: UUID(uuidString: "1C53E54D-EB38-4A50-8E0D-C5CC7DB9A0AA")!,
        name: "IGP Saint-Guilhem-le-Désert",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `64351BC2-F0EE-4A30-B95D-30FEC5E64AC5` = DefaultWineAppellation(
        id: UUID(uuidString: "64351BC2-F0EE-4A30-B95D-30FEC5E64AC5")!,
        name: "IGP Coteaux du Littoral Audois",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `DEB0A66A-C610-4562-9607-1E8511DAA210` = DefaultWineAppellation(
        id: UUID(uuidString: "DEB0A66A-C610-4562-9607-1E8511DAA210")!,
        name: "IGP Coteaux du Pont du Gard",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `AB539D5F-D8A1-4469-84A5-F0E737F1A7AE` = DefaultWineAppellation(
        id: UUID(uuidString: "AB539D5F-D8A1-4469-84A5-F0E737F1A7AE")!,
        name: "IGP Vallée du Paradis",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `BED08571-4765-4926-83EC-9FDD5F45B52E` = DefaultWineAppellation(
        id: UUID(uuidString: "BED08571-4765-4926-83EC-9FDD5F45B52E")!,
        name: "IGP Sable de Camargue",
        description: "",
        rawWindow: "",
        colors: [.rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `BF8BA490-ECD4-483F-8228-8EC60ABFD0AE` = DefaultWineAppellation(
        id: UUID(uuidString: "BF8BA490-ECD4-483F-8228-8EC60ABFD0AE")!,
        name: "IGP Vallée de L'Orb",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `66F6C46C-BA3D-4F64-99A1-087C82A46049` = DefaultWineAppellation(
        id: UUID(uuidString: "66F6C46C-BA3D-4F64-99A1-087C82A46049")!,
        name: "IGP Côte Vermeille",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `C580E687-A85E-4368-90ED-58F52592E096` = DefaultWineAppellation(
        id: UUID(uuidString: "C580E687-A85E-4368-90ED-58F52592E096")!,
        name: "IGP Vallée du Torgan",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `3FD561A9-B9E0-4C04-AD7C-A05AFB820063` = DefaultWineAppellation(
        id: UUID(uuidString: "3FD561A9-B9E0-4C04-AD7C-A05AFB820063")!,
        name: "IGP Terres du Midi",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `F2097F38-E6DA-469B-9E02-0F6B68C694D7` = DefaultWineAppellation(
        id: UUID(uuidString: "F2097F38-E6DA-469B-9E02-0F6B68C694D7")!,
        name: "Rancio Sec",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`2A183D4C-1CF7-4BDB-86B8-4BFC2F3DA2D8`
    )

    static let `E9571E99-26A2-46FD-9260-6B1835C7B665` = DefaultWineAppellation(
        id: UUID(uuidString: "E9571E99-26A2-46FD-9260-6B1835C7B665")!,
        name: "IGP Saint-Sardos",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `EED902AA-77A0-4AFB-A0E7-2B4893BC042A` = DefaultWineAppellation(
        id: UUID(uuidString: "EED902AA-77A0-4AFB-A0E7-2B4893BC042A")!,
        name: "IGP Lot-et-Garonne",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `AAEAE170-D185-4967-941F-9ABFD52810D5` = DefaultWineAppellation(
        id: UUID(uuidString: "AAEAE170-D185-4967-941F-9ABFD52810D5")!,
        name: "IGP Pyrénées-Atlantiques",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `F645D5F3-07FE-4219-8047-82FD0A762CB4` = DefaultWineAppellation(
        id: UUID(uuidString: "F645D5F3-07FE-4219-8047-82FD0A762CB4")!,
        name: "IGP Comté Tolosan",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `7AA71135-A98D-47F5-BF1F-99012FE37B9A` = DefaultWineAppellation(
        id: UUID(uuidString: "7AA71135-A98D-47F5-BF1F-99012FE37B9A")!,
        name: "IGP Côtes de Gascogne",
        description: "Entre forêt des Landes, Garonne et Pyrénées, les coteaux de Gascogne couvrent le département du Gers et une partie des Landes et du Lot-et-Garonne. Le vignoble occupe la même zone que l’armagnac, eau-de-vie encore élaborée dans la région, mais dont les volumes produits ont décliné au profit des vins de pays (devenus IGP). Sous l’influence d’un climat océanique clément, il est assez arrosé à l’ouest, plus sec à l’est, notamment l’été. A l’ouest, le sous-sol de sables fauves est d’origine marine, recouverts de boulbènes&nbsp;; il fait place progressivement à l’est à de la molasse, roche issue de l’érosion des Pyrénées.\n\nLes sols sont soit caillouteux et calcaires (peyrusquets) soit argileux et profonds (terrefort), retenant bien l’eau. La région de Condom, la plus sèche, a sa propre dénomination (Condomois).\n\nLes principaux cépages cultivés sont des blancs&nbsp;: colombard et ugni blanc, les cépages de l’armagnac. En général associés, parfois complétés par le sauvignon et le chardonnay, ils donnent des blancs vifs au fruité exubérant. Le gros et le petit manseng sont venus compléter cette gamme, pour livrer des vins moelleux eux aussi toniques et fruités. Les vins rouges et rosés, minoritaires, proviennent surtout du tannat, du cabernet-sauvignon, du merlot, du malbec, mais la liste, plus large permet d’utiliser des cépages aussi variés que le manseng noir local ou la syrah.",
        rawWindow: "A boire jeunes (jusqu’à 4-5 ans pour certains rouges et blancs moelleux)",
        colors: [.white, .red],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`9A540AD5-1794-4C6D-9B40-C1EF82676481`,
            DefaultGrapeVariety.`69D001E4-106C-4042-B05A-C6F01BEDB253`,
            DefaultGrapeVariety.`B48FD364-429A-494B-85F3-5F9DC22EE085`,
            DefaultGrapeVariety.`DCEA1DCF-1409-4F96-A812-772EF15CB765`,
            DefaultGrapeVariety.`A7612465-554A-4C3E-AD99-CD3EC9B807A6`,
            DefaultGrapeVariety.`B5981DA1-8DAB-4D1C-987F-ABD732919100`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`5B22EB3C-7B29-4893-959D-0E012D7B44D7`
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `6759069F-BA9E-4908-A8F2-AD09D9976CDF` = DefaultWineAppellation(
        id: UUID(uuidString: "6759069F-BA9E-4908-A8F2-AD09D9976CDF")!,
        name: "Lavilledieu",
        description: "Au nord du Frontonnais, sur les terrasses du Tarn et de la Garonne,** le vignoble de Lavilledieu produit des vins rouges et rosés à partir des cépages négrette (30&nbsp;%), cabernet franc, gamay, syrah et tannat.**",
        rawWindow: "Rouge : 2 à 4 ans.\n Rosé : à boire jeune.\n",
        colors: [.red, .rosé],
        mainGrapeVarieties: [
            DefaultGrapeVariety.`9EEE9160-C4BD-4F65-BDD2-0EFFF8808711`,
            DefaultGrapeVariety.`93ECBE53-1BDF-43EC-B0F7-A16DC38541B9`,
            DefaultGrapeVariety.`63538083-D1C5-48AE-BA11-2A227EB91690`,
            DefaultGrapeVariety.`C17E83C2-D7A4-4DC7-B2D5-BACAECB059F8`,
            DefaultGrapeVariety.`8CB3EC56-0FDB-4030-A668-AA32BC5B9453`
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `E7C5D1D9-B93E-4EF6-BD63-E5B9D8C07E61` = DefaultWineAppellation(
        id: UUID(uuidString: "E7C5D1D9-B93E-4EF6-BD63-E5B9D8C07E61")!,
        name: "IGP Côtes du Tarn",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `09FB8340-6BFA-4B6C-AA29-8304E920E97E` = DefaultWineAppellation(
        id: UUID(uuidString: "09FB8340-6BFA-4B6C-AA29-8304E920E97E")!,
        name: "IGP Corrèze",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `C01316D9-75FA-4ECA-B68F-14E68BFD4C28` = DefaultWineAppellation(
        id: UUID(uuidString: "C01316D9-75FA-4ECA-B68F-14E68BFD4C28")!,
        name: "IGP Coteaux de Glanes",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `D90906E2-AA1B-495D-BE0A-EC77B052F2BB` = DefaultWineAppellation(
        id: UUID(uuidString: "D90906E2-AA1B-495D-BE0A-EC77B052F2BB")!,
        name: "IGP Coteaux et Terrasses de Montauban",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `5BB1031B-7BAC-424B-A0F2-FC1EDC83743C` = DefaultWineAppellation(
        id: UUID(uuidString: "5BB1031B-7BAC-424B-A0F2-FC1EDC83743C")!,
        name: "IGP Gers",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `C67FD71A-5D19-4739-908B-8BDA95C8160E` = DefaultWineAppellation(
        id: UUID(uuidString: "C67FD71A-5D19-4739-908B-8BDA95C8160E")!,
        name: "IGP Côtes du Condomois",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `8A31B6A1-3C9E-4EBD-85DF-9BD071E320F3` = DefaultWineAppellation(
        id: UUID(uuidString: "8A31B6A1-3C9E-4EBD-85DF-9BD071E320F3")!,
        name: "IGP Tarn et Garonne",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `4B7664B3-3D19-4AC0-9ABE-99DCF49FD384` = DefaultWineAppellation(
        id: UUID(uuidString: "4B7664B3-3D19-4AC0-9ABE-99DCF49FD384")!,
        name: "IGP Ariège",
        description: "",
        rawWindow: "",
        colors: [.white, .rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `1ACCD8B9-7DFC-4379-88D4-42000E86DA8A` = DefaultWineAppellation(
        id: UUID(uuidString: "1ACCD8B9-7DFC-4379-88D4-42000E86DA8A")!,
        name: "IGP Côtes du Lot",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `35688C17-7499-49B5-9683-5D1C9C9A2B45` = DefaultWineAppellation(
        id: UUID(uuidString: "35688C17-7499-49B5-9683-5D1C9C9A2B45")!,
        name: "IGP Aveyron",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`BEB220A7-8545-4A4E-B898-3F35E1501F00`
    )

    static let `7285E2F8-B377-4BDA-BEB6-47E515F01623` = DefaultWineAppellation(
        id: UUID(uuidString: "7285E2F8-B377-4BDA-BEB6-47E515F01623")!,
        name: "Igpcoteaux du Verdon",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `B711FB1C-18EE-4784-99F3-F1E0787D363B` = DefaultWineAppellation(
        id: UUID(uuidString: "B711FB1C-18EE-4784-99F3-F1E0787D363B")!,
        name: "IGP Petite Crau",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `99F7AD49-D6BC-4DC7-9F07-06D1DC48940A` = DefaultWineAppellation(
        id: UUID(uuidString: "99F7AD49-D6BC-4DC7-9F07-06D1DC48940A")!,
        name: "IGP Principauté D'Orange",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `CFCA3761-3D27-4E58-8B49-169530424F94` = DefaultWineAppellation(
        id: UUID(uuidString: "CFCA3761-3D27-4E58-8B49-169530424F94")!,
        name: "IGP Île de Beauté",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `0602F999-087E-4BEF-94AE-CF3DEBF929B5` = DefaultWineAppellation(
        id: UUID(uuidString: "0602F999-087E-4BEF-94AE-CF3DEBF929B5")!,
        name: "IGP Alpes-Maritimes",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `FF252AAC-6CB4-4644-9B48-5E41B664C3A9` = DefaultWineAppellation(
        id: UUID(uuidString: "FF252AAC-6CB4-4644-9B48-5E41B664C3A9")!,
        name: "IGP Mont-Caume",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `7FB9CC56-9B09-4850-BAD4-8FA912547BD3` = DefaultWineAppellation(
        id: UUID(uuidString: "7FB9CC56-9B09-4850-BAD4-8FA912547BD3")!,
        name: "IGP Maures",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `2260C69D-CA91-4D7A-ACB4-8090D58B32FB` = DefaultWineAppellation(
        id: UUID(uuidString: "2260C69D-CA91-4D7A-ACB4-8090D58B32FB")!,
        name: "IGP Var",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `F7B06832-FEE2-496A-B10A-34BD24440C19` = DefaultWineAppellation(
        id: UUID(uuidString: "F7B06832-FEE2-496A-B10A-34BD24440C19")!,
        name: "IGP Vaucluse",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `60C57DFF-49E2-4E6B-943D-4AA150A1AA78` = DefaultWineAppellation(
        id: UUID(uuidString: "60C57DFF-49E2-4E6B-943D-4AA150A1AA78")!,
        name: "IGP Bouches-du-Rhône",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `CF28D1FD-1760-4CAE-ADD2-19ABFBFC3B51` = DefaultWineAppellation(
        id: UUID(uuidString: "CF28D1FD-1760-4CAE-ADD2-19ABFBFC3B51")!,
        name: "IGP Alpes-de-Haute-Provence",
        description: "",
        rawWindow: "",
        colors: [.red, .white, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `C7A793AE-37BE-4FFB-9C0B-B0E1479B04AE` = DefaultWineAppellation(
        id: UUID(uuidString: "C7A793AE-37BE-4FFB-9C0B-B0E1479B04AE")!,
        name: "IGP Sainte-Baume",
        description: "",
        rawWindow: "",
        colors: [.rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `6520917F-ECAC-45CA-AB50-3D8B8BA75271` = DefaultWineAppellation(
        id: UUID(uuidString: "6520917F-ECAC-45CA-AB50-3D8B8BA75271")!,
        name: "IGP Argens",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `BD330C79-5892-4FBD-9C22-40E80D1D0AF2` = DefaultWineAppellation(
        id: UUID(uuidString: "BD330C79-5892-4FBD-9C22-40E80D1D0AF2")!,
        name: "Igphautes-Alpes",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `600694D8-1133-4273-8F45-ADC735442A06` = DefaultWineAppellation(
        id: UUID(uuidString: "600694D8-1133-4273-8F45-ADC735442A06")!,
        name: "IGP Méditerranée",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`D8766E22-5CCA-4897-8F22-4A121EAD9B3D`
    )

    static let `D3B1E993-75C7-48C3-989C-7A427C5C6F91` = DefaultWineAppellation(
        id: UUID(uuidString: "D3B1E993-75C7-48C3-989C-7A427C5C6F91")!,
        name: "IGP Yonne",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `E619E65C-B2C7-4DA3-BFBC-B59D59546AEA` = DefaultWineAppellation(
        id: UUID(uuidString: "E619E65C-B2C7-4DA3-BFBC-B59D59546AEA")!,
        name: "IGP Saône-et-Loire",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `63DAF36D-6DAF-48EE-8B9C-EE6EECBF84D6` = DefaultWineAppellation(
        id: UUID(uuidString: "63DAF36D-6DAF-48EE-8B9C-EE6EECBF84D6")!,
        name: "IGP Coteaux de Coiffy",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `67A53E84-0583-4632-A028-98AEFE4FE3CB` = DefaultWineAppellation(
        id: UUID(uuidString: "67A53E84-0583-4632-A028-98AEFE4FE3CB")!,
        name: "IGP Sainte-Marie-la-Blanche",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `0743E6D8-6EF2-4A5C-AE30-15C5C416C243` = DefaultWineAppellation(
        id: UUID(uuidString: "0743E6D8-6EF2-4A5C-AE30-15C5C416C243")!,
        name: "IGP Meuse",
        description: "",
        rawWindow: "",
        colors: [.rosé, .red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `67C1C449-A264-4F0E-AB10-83614F6B1934` = DefaultWineAppellation(
        id: UUID(uuidString: "67C1C449-A264-4F0E-AB10-83614F6B1934")!,
        name: "IGP Franche-Comté",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `D240626A-4655-4B87-987F-ACD87C9D5EFF` = DefaultWineAppellation(
        id: UUID(uuidString: "D240626A-4655-4B87-987F-ACD87C9D5EFF")!,
        name: "IGP Coteaux de L'Auxois",
        description: "",
        rawWindow: "",
        colors: [.red, .rosé, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `FA376B46-1E21-4CF1-BCE2-96A5718F2FAB` = DefaultWineAppellation(
        id: UUID(uuidString: "FA376B46-1E21-4CF1-BCE2-96A5718F2FAB")!,
        name: "IGP Côte de Meuse",
        description: "",
        rawWindow: "",
        colors: [.rosé, .white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `B0FADF2A-2630-4525-93C5-877378871F8B` = DefaultWineAppellation(
        id: UUID(uuidString: "B0FADF2A-2630-4525-93C5-877378871F8B")!,
        name: "IGP Haute-Marne",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`4C29944A-60BC-4D29-A1B6-12714D900F24`
    )

    static let `F99A178A-F067-40FB-8B7E-26434294B42B` = DefaultWineAppellation(
        id: UUID(uuidString: "F99A178A-F067-40FB-8B7E-26434294B42B")!,
        name: "IGP Loire-Atlantique",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `BB203EE0-ED34-4855-B4BC-8AF5295702A8` = DefaultWineAppellation(
        id: UUID(uuidString: "BB203EE0-ED34-4855-B4BC-8AF5295702A8")!,
        name: "IGP Cher",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `EC347169-C506-47DE-9B42-0931C30E3B1A` = DefaultWineAppellation(
        id: UUID(uuidString: "EC347169-C506-47DE-9B42-0931C30E3B1A")!,
        name: "IGP Coteaux de Tannay",
        description: "",
        rawWindow: "",
        colors: [.red, .white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `D454E68A-19D6-4292-B74D-5F1E71AE31C3` = DefaultWineAppellation(
        id: UUID(uuidString: "D454E68A-19D6-4292-B74D-5F1E71AE31C3")!,
        name: "IGP Deux Sèvres",
        description: "",
        rawWindow: "",
        colors: [],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `5EC17C9C-BCA6-4018-9C1C-E1DA64235CB1` = DefaultWineAppellation(
        id: UUID(uuidString: "5EC17C9C-BCA6-4018-9C1C-E1DA64235CB1")!,
        name: "IGP Nièvre",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `BB8178C2-B1C2-49C4-9427-1433EAC3A76F` = DefaultWineAppellation(
        id: UUID(uuidString: "BB8178C2-B1C2-49C4-9427-1433EAC3A76F")!,
        name: "IGP Vendée",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `8D613DA7-5D70-48F7-BD13-25C9B6C3A246` = DefaultWineAppellation(
        id: UUID(uuidString: "8D613DA7-5D70-48F7-BD13-25C9B6C3A246")!,
        name: "IGP Vienne",
        description: "",
        rawWindow: "",
        colors: [.red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `724E7B57-33BC-4E13-AEBE-5D8168FF231D` = DefaultWineAppellation(
        id: UUID(uuidString: "724E7B57-33BC-4E13-AEBE-5D8168FF231D")!,
        name: "IGP Allier",
        description: "",
        rawWindow: "",
        colors: [.white],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `42D6F9D8-E2BF-4A2E-9AFC-6FC99B0060BB` = DefaultWineAppellation(
        id: UUID(uuidString: "42D6F9D8-E2BF-4A2E-9AFC-6FC99B0060BB")!,
        name: "IGP Coteaux Charitois",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `CB34A249-AA32-4439-A31A-93797ABC516A` = DefaultWineAppellation(
        id: UUID(uuidString: "CB34A249-AA32-4439-A31A-93797ABC516A")!,
        name: "IGP Calvados",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `8E7A02CC-3C26-4EDE-8D56-FCF6CED6E7B9` = DefaultWineAppellation(
        id: UUID(uuidString: "8E7A02CC-3C26-4EDE-8D56-FCF6CED6E7B9")!,
        name: "IGP Val de Loire",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `0EF67466-6F1D-4859-AEF8-16F88846637E` = DefaultWineAppellation(
        id: UUID(uuidString: "0EF67466-6F1D-4859-AEF8-16F88846637E")!,
        name: "IGP Puy-de-Dôme",
        description: "",
        rawWindow: "",
        colors: [.white, .red],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )

    static let `D711F6F0-C0D9-49A5-9351-E1B9337C664C` = DefaultWineAppellation(
        id: UUID(uuidString: "D711F6F0-C0D9-49A5-9351-E1B9337C664C")!,
        name: "IGP Côtes de la Charité",
        description: "",
        rawWindow: "",
        colors: [.white, .red, .rosé],
        mainGrapeVarieties: [
        ],
        region: DefaultWineRegion.`8F695619-9DB8-4E42-AB1A-07A5CC7D27BF`
    )
}
