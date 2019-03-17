.class public Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPMeta;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private packetHeader:Ljava/lang/String;

.field private tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 1
    .param p1, "tree"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 81
    return-void
.end method

.method private evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;
    .locals 6
    .param p1, "valueType"    # I
    .param p2, "propNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "rawValue":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1419
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 1422
    :goto_0
    return-object v2

    .line 1392
    :pswitch_0
    new-instance v2, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1393
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 1395
    .end local v2    # "value":Ljava/lang/Boolean;
    :pswitch_1
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToInteger(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1396
    .local v2, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 1398
    .end local v2    # "value":Ljava/lang/Integer;
    :pswitch_2
    new-instance v2, Ljava/lang/Long;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 1399
    .local v2, "value":Ljava/lang/Long;
    goto :goto_0

    .line 1401
    .end local v2    # "value":Ljava/lang/Long;
    :pswitch_3
    new-instance v2, Ljava/lang/Double;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 1402
    .local v2, "value":Ljava/lang/Double;
    goto :goto_0

    .line 1404
    .end local v2    # "value":Ljava/lang/Double;
    :pswitch_4
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    .line 1405
    .local v2, "value":Lcom/adobe/xmp/XMPDateTime;
    goto :goto_0

    .line 1407
    .end local v2    # "value":Lcom/adobe/xmp/XMPDateTime;
    :pswitch_5
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 1408
    .local v0, "dt":Lcom/adobe/xmp/XMPDateTime;
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 1409
    .local v2, "value":Ljava/util/Calendar;
    goto :goto_0

    .line 1411
    .end local v0    # "dt":Lcom/adobe/xmp/XMPDateTime;
    .end local v2    # "value":Ljava/util/Calendar;
    :pswitch_6
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 1412
    .local v2, "value":[B
    goto :goto_0

    .line 1419
    .end local v2    # "value":[B
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1238
    .local v0, "clonedTree":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 732
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 733
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 735
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 736
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 738
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_1

    .line 740
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Property must be simple when a value type is requested"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 746
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v2

    .line 750
    :cond_1
    return-object v2
.end method

.method public getRoot()Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 16
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "altTextName"    # Ljava/lang/String;
    .param p3, "genericLang"    # Ljava/lang/String;
    .param p4, "specificLang"    # Ljava/lang/String;
    .param p5, "itemValue"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 447
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 448
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    .line 450
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 451
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 453
    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 456
    .local v3, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v13, 0x1

    new-instance v14, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v15, 0x1e00

    invoke-direct {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-static {v12, v3, v13, v14}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 460
    .local v2, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v2, :cond_1

    .line 462
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Failed to find or create array node"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 450
    .end local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_0
    const/16 p3, 0x0

    goto :goto_0

    .line 464
    .restart local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_1
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v12

    if-nez v12, :cond_2

    .line 466
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 468
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 478
    :cond_2
    const/4 v5, 0x0

    .line 479
    .local v5, "haveXDefault":Z
    const/4 v11, 0x0

    .line 481
    .local v11, "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 483
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 484
    .local v4, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "xml:lang"

    const/4 v13, 0x1

    .line 485
    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 487
    :cond_4
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Language qualifier must be first"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 472
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v5    # "haveXDefault":Z
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Specified property is no alt-text array"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 489
    .restart local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v5    # "haveXDefault":Z
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_6
    const-string/jumbo v12, "x-default"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 491
    move-object v11, v4

    .line 492
    const/4 v5, 0x1

    .line 498
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 500
    invoke-virtual {v2, v11}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 501
    const/4 v12, 0x1

    invoke-virtual {v2, v12, v11}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 507
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    .line 508
    .local v9, "result":[Ljava/lang/Object;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 509
    .local v8, "match":I
    const/4 v12, 0x1

    aget-object v7, v9, v12

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 511
    .local v7, "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 513
    .local v10, "specificXDefault":Z
    packed-switch v8, :pswitch_data_0

    .line 611
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string v13, "Unexpected result from ChooseLocalizedText"

    const/16 v14, 0x9

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 519
    :pswitch_0
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v5, 0x1

    .line 521
    if-nez v10, :cond_9

    .line 523
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_9
    :goto_1
    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 619
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_a
    return-void

    .line 529
    :pswitch_1
    if-nez v10, :cond_c

    .line 533
    if-eqz v5, :cond_b

    if-eq v11, v7, :cond_b

    if-eqz v11, :cond_b

    .line 534
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 536
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 539
    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_c
    sget-boolean v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    if-nez v12, :cond_e

    if-eqz v5, :cond_d

    if-eq v11, v7, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 545
    :cond_e
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 547
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 548
    .restart local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    if-eq v4, v11, :cond_f

    .line 549
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_10

    .line 550
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 549
    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 554
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 557
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_11
    if-eqz v11, :cond_9

    .line 559
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :pswitch_2
    if-eqz v5, :cond_12

    if-eq v11, v7, :cond_12

    if-eqz v11, :cond_12

    .line 569
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 573
    :cond_12
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :pswitch_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v10, :cond_9

    .line 584
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 592
    :pswitch_4
    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 594
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 596
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 602
    :pswitch_5
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v10, :cond_9

    .line 605
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPacketHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetHeader"    # Ljava/lang/String;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 1227
    return-void
.end method
