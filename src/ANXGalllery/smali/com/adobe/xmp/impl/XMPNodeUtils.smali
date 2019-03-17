.class public Lcom/adobe/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/xmp/impl/XMPNodeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "itemLang"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 780
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "[]"

    invoke-direct {v1, v2, p2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 781
    .local v1, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v2, "xml:lang"

    invoke-direct {v0, v2, p1, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    .local v0, "langQual":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 784
    const-string/jumbo v2, "x-default"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "genericLang"    # Ljava/lang/String;
    .param p2, "specificLang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x66

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 819
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v6

    if-nez v6, :cond_0

    .line 821
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Localized text array is not alt-text"

    invoke-direct {v6, v7, v11}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_1

    .line 825
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    const/4 v7, 0x0

    aput-object v7, v6, v9

    .line 887
    :goto_0
    return-object v6

    .line 828
    :cond_1
    const/4 v2, 0x0

    .line 829
    .local v2, "foundGenericMatches":I
    const/4 v4, 0x0

    .line 830
    .local v4, "resultNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v5, 0x0

    .line 833
    .local v5, "xDefault":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 835
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 838
    .local v0, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 840
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Alt-text array item is not simple"

    invoke-direct {v6, v7, v11}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 842
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "xml:lang"

    .line 843
    invoke-virtual {v0, v9}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 845
    :cond_4
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Alt-text array item has no language qualifier"

    invoke-direct {v6, v7, v11}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 849
    :cond_5
    invoke-virtual {v0, v9}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "currLang":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 854
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v0, v6, v9

    goto :goto_0

    .line 856
    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 858
    if-nez v4, :cond_7

    .line 860
    move-object v4, v0

    .line 863
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 865
    :cond_8
    const-string/jumbo v6, "x-default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 867
    move-object v5, v0

    goto :goto_1

    .line 872
    .end local v0    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v1    # "currLang":Ljava/lang/String;
    :cond_9
    if-ne v2, v9, :cond_a

    .line 874
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v4, v6, v9

    goto/16 :goto_0

    .line 876
    :cond_a
    if-le v2, v9, :cond_b

    .line 878
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v4, v6, v9

    goto/16 :goto_0

    .line 880
    :cond_b
    if-eqz v5, :cond_c

    .line 882
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v5, v6, v9

    goto/16 :goto_0

    .line 887
    :cond_c
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    invoke-virtual {p0, v9}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    aput-object v7, v6, v9

    goto/16 :goto_0
.end method

.method static deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2
    .param p0, "node"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 299
    .local v0, "parent":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 315
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "isAltText":Z
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 753
    .local v0, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    const/4 v1, 0x1

    .line 760
    .end local v0    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    if-eqz v1, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 763
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 766
    .end local v1    # "isAltText":Z
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method static findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 5
    .param p0, "parent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "childName"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x66

    const/4 v3, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Named children only allowed for schemas and structs"

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Named children not allowed for arrays"

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 170
    .local v0, "childNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 172
    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 173
    .local v1, "options":Lcom/adobe/xmp/options/PropertyOptions;
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    .end local v0    # "childNode":Lcom/adobe/xmp/impl/XMPNode;
    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 174
    .restart local v0    # "childNode":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 178
    .end local v1    # "options":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_3
    sget-boolean v2, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 180
    :cond_4
    return-object v0
.end method

.method private static findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 7
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x66

    const/4 v5, 0x1

    .line 564
    const/4 v1, 0x0

    .line 568
    .local v1, "index":I
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 570
    if-ge v1, v5, :cond_0

    .line 572
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Array index must be larger than zero"

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/adobe/xmp/XMPException;

    const-string v4, "Array index not digits."

    invoke-direct {v3, v4, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 581
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_1

    .line 584
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "[]"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 585
    .local v2, "newItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2, v5}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 586
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 589
    .end local v2    # "newItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    return v1
.end method

.method static findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 9
    .param p0, "xmpTree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "xpath"    # Lcom/adobe/xmp/impl/xpath/XMPPath;
    .param p2, "createNodes"    # Z
    .param p3, "leafOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 203
    :cond_0
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Empty XMPPath"

    const/16 v6, 0x66

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 208
    :cond_1
    const/4 v3, 0x0

    .line 209
    .local v3, "rootImplicitNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v0, 0x0

    .line 213
    .local v0, "currNode":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p1, v6}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {p0, v5, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 214
    if-nez v0, :cond_3

    .line 286
    :cond_2
    :goto_0
    return-object v4

    .line 218
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    invoke-virtual {v0, v6}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 221
    move-object v3, v0

    .line 228
    :cond_4
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 230
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-static {v0, v5, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 231
    if-nez v0, :cond_6

    .line 233
    if-eqz p2, :cond_2

    .line 236
    invoke-static {v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    if-eqz v3, :cond_5

    .line 273
    invoke-static {v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 275
    :cond_5
    throw v1

    .line 240
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 247
    if-ne v2, v8, :cond_9

    .line 248
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 249
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v5

    if-eqz v5, :cond_9

    .line 251
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 261
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 263
    move-object v3, v0

    .line 228
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_9
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    .line 255
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 256
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 258
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 279
    :cond_a
    if-eqz v3, :cond_b

    .line 282
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 283
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_b
    move-object v4, v0

    .line 286
    goto/16 :goto_0
.end method

.method private static findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 2
    .param p0, "parent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "qualName"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 538
    sget-boolean v1, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 542
    .local v0, "qualNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 544
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    .end local v0    # "qualNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 545
    .restart local v0    # "qualNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 550
    :cond_1
    return-object v0
.end method

.method static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 5
    .param p0, "tree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "suggestedPrefix"    # Ljava/lang/String;
    .param p3, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 99
    sget-boolean v2, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 102
    .local v1, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 104
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    .end local v1    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 106
    invoke-virtual {v2, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 107
    .restart local v1    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 110
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "prefix":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 113
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 130
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 120
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Unregistered schema namespace URI"

    const/16 v4, 0x65

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 1
    .param p0, "tree"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method private static followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 11
    .param p0, "parentNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "nextStep"    # Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .param p2, "createNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "nextNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v2, 0x0

    .line 462
    .local v2, "index":I
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v7

    .line 464
    .local v7, "stepKind":I
    if-ne v7, v9, :cond_1

    .line 466
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 517
    :cond_0
    :goto_0
    return-object v3

    .line 468
    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 471
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 470
    invoke-static {p0, v8, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v8

    if-nez v8, :cond_3

    .line 479
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Indexing applied to non-array"

    const/16 v10, 0x66

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 482
    :cond_3
    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 484
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result v2

    .line 511
    :goto_1
    if-gt v9, v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 513
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    goto :goto_0

    .line 486
    :cond_4
    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    goto :goto_1

    .line 490
    :cond_5
    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 492
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "result":[Ljava/lang/String;
    aget-object v0, v6, v10

    .line 494
    .local v0, "fieldName":Ljava/lang/String;
    aget-object v1, v6, v9

    .line 495
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 496
    goto :goto_1

    .line 497
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v6    # "result":[Ljava/lang/String;
    :cond_6
    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    .line 499
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 500
    .restart local v6    # "result":[Ljava/lang/String;
    aget-object v4, v6, v10

    .line 501
    .local v4, "qualName":Ljava/lang/String;
    aget-object v5, v6, v9

    .line 503
    .local v5, "qualValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v8

    .line 502
    invoke-static {p0, v4, v5, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 504
    goto :goto_1

    .line 507
    .end local v4    # "qualName":Ljava/lang/String;
    .end local v5    # "qualValue":Ljava/lang/String;
    .end local v6    # "result":[Ljava/lang/String;
    :cond_7
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Unknown array indexing step in FollowXPathStep"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method private static lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v4, -0x1

    .line 609
    .local v4, "result":I
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v3, v5, :cond_4

    if-gez v4, :cond_4

    .line 611
    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 613
    .local v1, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    new-instance v5, Lcom/adobe/xmp/XMPException;

    const-string v6, "Field selector must be used on array of struct"

    const/16 v7, 0x66

    invoke-direct {v5, v6, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 619
    :cond_0
    const/4 v2, 0x1

    .local v2, "f":I
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v2, v5, :cond_3

    .line 621
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 622
    .local v0, "currField":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 619
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    move v4, v3

    .line 609
    .end local v0    # "currField":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "f":I
    :cond_4
    return v4
.end method

.method static lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Language item must be used on array"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 909
    :cond_0
    const/4 v1, 0x1

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 911
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 912
    .local v0, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 909
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    .end local v0    # "child":Lcom/adobe/xmp/impl/XMPNode;
    .end local v1    # "index":I
    :goto_1
    return v1

    .restart local v1    # "index":I
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "qualName"    # Ljava/lang/String;
    .param p2, "qualValue"    # Ljava/lang/String;
    .param p3, "aliasForm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 655
    const-string/jumbo v7, "xml:lang"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 657
    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 658
    invoke-static {p0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    .line 659
    .local v1, "index":I
    if-gez v1, :cond_0

    and-int/lit16 v7, p3, 0x1000

    if-lez v7, :cond_0

    .line 661
    new-instance v3, Lcom/adobe/xmp/impl/XMPNode;

    const-string v7, "[]"

    invoke-direct {v3, v7, v9}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 662
    .local v3, "langNode":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v5, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v7, "xml:lang"

    const-string/jumbo v8, "x-default"

    invoke-direct {v5, v7, v8, v9}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 663
    .local v5, "xdefault":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v3, v5}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 664
    invoke-virtual {p0, v6, v3}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 688
    .end local v3    # "langNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v5    # "xdefault":Lcom/adobe/xmp/impl/XMPNode;
    :goto_0
    return v6

    :cond_0
    move v6, v1

    .line 669
    goto :goto_0

    .line 674
    .end local v1    # "index":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "index":I
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 676
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 678
    .local v0, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 681
    .local v4, "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 682
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v1

    .line 684
    goto :goto_0

    .line 674
    .end local v4    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 688
    .end local v0    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_4
    const/4 v6, -0x1

    goto :goto_0
.end method

.method static normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 7
    .param p0, "arrayNode"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 705
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 713
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 714
    .local v0, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "x-default"

    invoke-virtual {v0, v5}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 720
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_2
    if-ne v2, v6, :cond_0

    .line 730
    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    sget-boolean v3, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 711
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 3
    .param p0, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p1, "itemValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 351
    if-nez p0, :cond_0

    .line 354
    new-instance p0, Lcom/adobe/xmp/options/PropertyOptions;

    .end local p0    # "options":Lcom/adobe/xmp/options/PropertyOptions;
    invoke-direct {p0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 357
    .restart local p0    # "options":Lcom/adobe/xmp/options/PropertyOptions;
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 374
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Structs and arrays can\'t have values"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->assertConsistency(I)V

    .line 380
    return-object p0
.end method
