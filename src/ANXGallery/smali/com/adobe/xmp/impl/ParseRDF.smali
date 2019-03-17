.class public Lcom/adobe/xmp/impl/ParseRDF;
.super Ljava/lang/Object;
.source "ParseRDF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/xmp/impl/ParseRDF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 14
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 989
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v9

    .line 990
    .local v9, "registry":Lcom/adobe/xmp/XMPSchemaRegistry;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "namespace":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 994
    const-string v11, "http://purl.org/dc/1.1/"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 997
    const-string v6, "http://purl.org/dc/elements/1.1/"

    .line 1000
    :cond_0
    invoke-interface {v9, v6}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1001
    .local v8, "prefix":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 1003
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    .line 1004
    :goto_0
    invoke-interface {v9, v6, v8}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1006
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "childName":Ljava/lang/String;
    new-instance v2, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 1017
    .local v2, "childOptions":Lcom/adobe/xmp/options/PropertyOptions;
    const/4 v3, 0x0

    .line 1018
    .local v3, "isAlias":Z
    if-eqz p4, :cond_2

    .line 1022
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    const-string v12, "_dflt"

    const/4 v13, 0x1

    invoke-static {v11, v6, v12, v13}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    .line 1024
    .local v10, "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 1026
    move-object p1, v10

    .line 1030
    invoke-interface {v9, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1032
    const/4 v3, 0x1

    .line 1033
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1034
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1040
    .end local v10    # "schemaNode":Lcom/adobe/xmp/impl/XMPNode;
    :cond_2
    const-string v11, "rdf:li"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1041
    .local v4, "isArrayItem":Z
    const-string v11, "rdf:value"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1044
    .local v5, "isValueNode":Z
    new-instance v7, Lcom/adobe/xmp/impl/XMPNode;

    move-object/from16 v0, p3

    invoke-direct {v7, v1, v0, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1046
    .local v7, "newChild":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v7, v3}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    .line 1049
    if-nez v5, :cond_6

    .line 1051
    invoke-virtual {p1, v7}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1059
    :goto_1
    if-eqz v5, :cond_8

    .line 1061
    if-nez p4, :cond_3

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1063
    :cond_3
    new-instance v11, Lcom/adobe/xmp/XMPException;

    const-string v12, "Misplaced rdf:value element"

    const/16 v13, 0xca

    invoke-direct {v11, v12, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 1003
    .end local v1    # "childName":Ljava/lang/String;
    .end local v2    # "childOptions":Lcom/adobe/xmp/options/PropertyOptions;
    .end local v3    # "isAlias":Z
    .end local v4    # "isArrayItem":Z
    .end local v5    # "isValueNode":Z
    .end local v7    # "newChild":Lcom/adobe/xmp/impl/XMPNode;
    :cond_4
    const-string v8, "_dflt"

    goto :goto_0

    .line 1010
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v11, Lcom/adobe/xmp/XMPException;

    const-string v12, "XML namespace required for all elements and attributes"

    const/16 v13, 0xca

    invoke-direct {v11, v12, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 1055
    .restart local v1    # "childName":Ljava/lang/String;
    .restart local v2    # "childOptions":Lcom/adobe/xmp/options/PropertyOptions;
    .restart local v3    # "isAlias":Z
    .restart local v4    # "isArrayItem":Z
    .restart local v5    # "isValueNode":Z
    .restart local v7    # "newChild":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v8    # "prefix":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x1

    invoke-virtual {p1, v11, v7}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 1065
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1068
    :cond_8
    if-eqz v4, :cond_a

    .line 1070
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1072
    new-instance v11, Lcom/adobe/xmp/XMPException;

    const-string v12, "Misplaced rdf:li element"

    const/16 v13, 0xca

    invoke-direct {v11, v12, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 1074
    :cond_9
    const-string v11, "[]"

    invoke-virtual {v7, v11}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 1077
    :cond_a
    return-object v7
.end method

.method private static addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 3
    .param p0, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1094
    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1096
    .local v0, "isLang":Z
    const/4 v1, 0x0

    .line 1099
    .local v1, "newQual":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    .end local v1    # "newQual":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1100
    .restart local v1    # "newQual":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1102
    return-object v1
.end method

.method private static fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 10
    .param p0, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1118
    sget-boolean v6, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1120
    :cond_1
    invoke-virtual {p0, v9}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    .line 1121
    .local v5, "valueNode":Lcom/adobe/xmp/impl/XMPNode;
    sget-boolean v6, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const-string v6, "rdf:value"

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1128
    :cond_2
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1130
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1132
    new-instance v6, Lcom/adobe/xmp/XMPException;

    const-string v7, "Redundant xml:lang for rdf:value element"

    const/16 v8, 0xcb

    invoke-direct {v6, v7, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1135
    :cond_3
    invoke-virtual {v5, v9}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 1136
    .local v3, "langQual":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v5, v3}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1137
    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    .end local v3    # "langQual":Lcom/adobe/xmp/impl/XMPNode;
    :cond_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v6

    if-gt v1, v6, :cond_5

    .line 1143
    invoke-virtual {v5, v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 1144
    .local v4, "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1150
    .end local v4    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    :cond_5
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v6

    if-gt v1, v6, :cond_6

    .line 1152
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 1153
    .restart local v4    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1158
    .end local v4    # "qualifier":Lcom/adobe/xmp/impl/XMPNode;
    :cond_6
    sget-boolean v6, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1160
    :cond_7
    invoke-virtual {p0, v8}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 1162
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1163
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    .line 1166
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1169
    .local v0, "child":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 1171
    .end local v0    # "child":Lcom/adobe/xmp/impl/XMPNode;
    :cond_8
    return-void
.end method

.method private static getRDFTermKind(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 1256
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "localName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "namespace":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v2, "about"

    .line 1261
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_1

    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    check-cast p0, Lorg/w3c/dom/Attr;

    .line 1263
    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1266
    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1269
    :cond_1
    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1271
    const-string v2, "li"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1273
    const/16 v2, 0x9

    .line 1321
    :goto_0
    return v2

    .line 1275
    :cond_2
    const-string v2, "parseType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1277
    const/4 v2, 0x4

    goto :goto_0

    .line 1279
    :cond_3
    const-string v2, "Description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1281
    const/16 v2, 0x8

    goto :goto_0

    .line 1283
    :cond_4
    const-string v2, "about"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1285
    const/4 v2, 0x3

    goto :goto_0

    .line 1287
    :cond_5
    const-string v2, "resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1289
    const/4 v2, 0x5

    goto :goto_0

    .line 1291
    :cond_6
    const-string v2, "RDF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1293
    const/4 v2, 0x1

    goto :goto_0

    .line 1295
    :cond_7
    const-string v2, "ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1297
    const/4 v2, 0x2

    goto :goto_0

    .line 1299
    :cond_8
    const-string v2, "nodeID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1301
    const/4 v2, 0x6

    goto :goto_0

    .line 1303
    :cond_9
    const-string v2, "datatype"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1305
    const/4 v2, 0x7

    goto :goto_0

    .line 1307
    :cond_a
    const-string v2, "aboutEach"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1309
    const/16 v2, 0xa

    goto :goto_0

    .line 1311
    :cond_b
    const-string v2, "aboutEachPrefix"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1313
    const/16 v2, 0xb

    goto :goto_0

    .line 1315
    :cond_c
    const-string v2, "bagID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1317
    const/16 v2, 0xc

    goto :goto_0

    .line 1321
    :cond_d
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCoreSyntaxTerm(I)Z
    .locals 2
    .param p0, "term"    # I

    .prologue
    const/4 v0, 0x1

    .line 1243
    if-gt v0, p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOldTerm(I)Z
    .locals 1
    .param p0, "term"    # I

    .prologue
    .line 1229
    const/16 v0, 0xa

    if-gt v0, p0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPropertyElementName(I)Z
    .locals 2
    .param p0, "term"    # I

    .prologue
    const/4 v0, 0x0

    .line 1209
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isOldTerm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isCoreSyntaxTerm(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isWhitespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 1182
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v2

    .line 1187
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1190
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1196
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;
    .locals 1
    .param p0, "xmlRoot"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 90
    .local v0, "xmp":Lcom/adobe/xmp/impl/XMPMetaImpl;
    invoke-static {v0, p0}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V

    .line 91
    return-object v0
.end method

.method private static rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 17
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v9, 0x0

    .line 817
    .local v9, "hasPropertyAttrs":Z
    const/4 v10, 0x0

    .line 818
    .local v10, "hasResourceAttr":Z
    const/4 v8, 0x0

    .line 819
    .local v8, "hasNodeIDAttr":Z
    const/4 v11, 0x0

    .line 821
    .local v11, "hasValueAttr":Z
    const/4 v13, 0x0

    .line 823
    .local v13, "valueNode":Lorg/w3c/dom/Node;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 825
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Nested content not allowed with rdf:resource or property attributes"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 831
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v12, v14, :cond_8

    .line 833
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 834
    .local v5, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v14, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 835
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 831
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 840
    :cond_2
    invoke-static {v5}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v4

    .line 842
    .local v4, "attrTerm":I
    packed-switch v4, :pswitch_data_0

    .line 899
    :pswitch_1
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Unrecognized attribute of empty property element"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 849
    :pswitch_2
    if-eqz v8, :cond_3

    .line 851
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 855
    :cond_3
    if-eqz v11, :cond_4

    .line 857
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v16, 0xcb

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 862
    :cond_4
    const/4 v10, 0x1

    .line 863
    if-nez v11, :cond_1

    .line 865
    move-object v13, v5

    goto :goto_1

    .line 870
    :pswitch_3
    if-eqz v10, :cond_5

    .line 872
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 876
    :cond_5
    const/4 v8, 0x1

    .line 877
    goto :goto_1

    .line 880
    :pswitch_4
    const-string/jumbo v14, "value"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 881
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 883
    if-eqz v10, :cond_6

    .line 885
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v16, 0xcb

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 889
    :cond_6
    const/4 v11, 0x1

    .line 890
    move-object v13, v5

    goto :goto_1

    .line 892
    :cond_7
    const-string/jumbo v14, "xml:lang"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 894
    const/4 v9, 0x1

    goto :goto_1

    .line 910
    .end local v4    # "attrTerm":I
    .end local v5    # "attribute":Lorg/w3c/dom/Node;
    :cond_8
    const-string v14, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v14, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    .line 911
    .local v7, "childNode":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v6, 0x0

    .line 913
    .local v6, "childIsStruct":Z
    if-nez v11, :cond_9

    if-eqz v10, :cond_d

    .line 915
    :cond_9
    if-eqz v13, :cond_c

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v7, v14}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 916
    if-nez v11, :cond_a

    .line 919
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setURI(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 928
    :cond_a
    :goto_3
    const/4 v12, 0x0

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v12, v14, :cond_11

    .line 930
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 931
    .restart local v5    # "attribute":Lorg/w3c/dom/Node;
    if-eq v5, v13, :cond_b

    const-string/jumbo v14, "xmlns"

    .line 932
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 933
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_e

    const-string/jumbo v14, "xmlns"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 928
    :cond_b
    :goto_5
    :pswitch_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 915
    .end local v5    # "attribute":Lorg/w3c/dom/Node;
    :cond_c
    const-string v14, ""

    goto :goto_2

    .line 922
    :cond_d
    if-eqz v9, :cond_a

    .line 924
    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 925
    const/4 v6, 0x1

    goto :goto_3

    .line 938
    .restart local v5    # "attribute":Lorg/w3c/dom/Node;
    :cond_e
    invoke-static {v5}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v4

    .line 940
    .restart local v4    # "attrTerm":I
    packed-switch v4, :pswitch_data_1

    .line 967
    :pswitch_6
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Unrecognized attribute of empty property element"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 947
    :pswitch_7
    const-string v14, "rdf:resource"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v14, v15}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 951
    :pswitch_8
    if-nez v6, :cond_f

    .line 954
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 953
    invoke-static {v7, v14, v15}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 956
    :cond_f
    const-string/jumbo v14, "xml:lang"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 958
    const-string/jumbo v14, "xml:lang"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v14, v15}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 962
    :cond_10
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v14, v15}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 972
    .end local v4    # "attrTerm":I
    .end local v5    # "attribute":Lorg/w3c/dom/Node;
    :cond_11
    return-void

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 10
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xca

    .line 620
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    .line 622
    .local v5, "newChild":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 624
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 625
    .local v2, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v7, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 626
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 631
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "attrNS":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "attrLocal":Ljava/lang/String;
    const-string/jumbo v7, "xml:lang"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 635
    const-string/jumbo v7, "xml:lang"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 637
    :cond_2
    const-string v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ID"

    .line 638
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "datatype"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 644
    :cond_3
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid attribute for literal property element"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 648
    .end local v0    # "attrLocal":Ljava/lang/String;
    .end local v1    # "attrNS":Ljava/lang/String;
    .end local v2    # "attribute":Lorg/w3c/dom/Node;
    :cond_4
    const-string v6, ""

    .line 649
    .local v6, "textValue":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 651
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 652
    .local v3, "child":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 658
    :cond_5
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Invalid child of literal property element"

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 661
    .end local v3    # "child":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {v5, v6}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private static rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 4
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 165
    .local v0, "nodeTerm":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Node element must be rdf:Description or typed node"

    const/16 v3, 0xca

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    .line 172
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Top level typed node not allowed"

    const/16 v3, 0xcb

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 176
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 180
    return-void
.end method

.method private static rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 7
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xca

    .line 208
    const/4 v2, 0x0

    .line 210
    .local v2, "exclusiveAttrs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 212
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 216
    .local v1, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v4, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 224
    .local v0, "attrTerm":I
    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Invalid nodeElement attribute"

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 229
    :pswitch_1
    if-lez v2, :cond_2

    .line 231
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 235
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 237
    if-eqz p3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 245
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    new-instance v4, Lcom/adobe/xmp/XMPException;

    const-string v5, "Mismatched top level rdf:about values"

    const/16 v6, 0xcb

    invoke-direct {v4, v5, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 253
    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :pswitch_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v1, v4, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 267
    .end local v0    # "attrTerm":I
    .end local v1    # "attribute":Lorg/w3c/dom/Node;
    :cond_4
    return-void

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "rdfRdfNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 134
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method private static rdf_ParseTypeCollectionPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeLiteralPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeLiteral property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeOtherPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "ParseTypeOther property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 8
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 699
    const-string v5, ""

    invoke-static {p0, p1, p2, v5, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 701
    .local v4, "newStruct":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 703
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 705
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 706
    .local v2, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v5, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 707
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "attrLocal":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "attrNS":Ljava/lang/String;
    const-string/jumbo v5, "xml:lang"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 716
    const-string/jumbo v5, "xml:lang"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 718
    :cond_2
    const-string v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ID"

    .line 719
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "parseType"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 726
    :cond_3
    new-instance v5, Lcom/adobe/xmp/XMPException;

    const-string v6, "Invalid attribute for ParseTypeResource property element"

    const/16 v7, 0xca

    invoke-direct {v5, v6, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 731
    .end local v0    # "attrLocal":Ljava/lang/String;
    .end local v1    # "attrNS":Ljava/lang/String;
    .end local v2    # "attribute":Lorg/w3c/dom/Node;
    :cond_4
    const/4 v5, 0x0

    invoke-static {p0, v4, p2, v5}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 733
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 735
    invoke-static {v4}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 737
    :cond_5
    return-void
.end method

.method private static rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 14
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v8

    .line 365
    .local v8, "nodeTerm":I
    invoke-static {v8}, Lcom/adobe/xmp/impl/ParseRDF;->isPropertyElementName(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 367
    new-instance v11, Lcom/adobe/xmp/XMPException;

    const-string v12, "Invalid property element name"

    const/16 v13, 0xca

    invoke-direct {v11, v12, v13}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 371
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 372
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v10, 0x0

    .line 373
    .local v10, "nsAttrs":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 375
    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 376
    .local v3, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v11, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 377
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "xmlns"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 379
    :cond_1
    if-nez v10, :cond_2

    .line 381
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "nsAttrs":Ljava/util/List;
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .restart local v10    # "nsAttrs":Ljava/util/List;
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 386
    .end local v3    # "attribute":Lorg/w3c/dom/Node;
    :cond_4
    if-eqz v10, :cond_5

    .line 388
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 390
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 391
    .local v9, "ns":Ljava/lang/String;
    invoke-interface {v4, v9}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 396
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v9    # "ns":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_6

    .line 399
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 467
    :goto_2
    return-void

    .line 407
    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_f

    .line 409
    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 410
    .restart local v3    # "attribute":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "attrLocal":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "attrNS":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "attrValue":Ljava/lang/String;
    const-string/jumbo v11, "xml:lang"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "ID"

    .line 414
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 416
    :cond_7
    const-string v11, "datatype"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 418
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_2

    .line 420
    :cond_8
    const-string v11, "parseType"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 422
    :cond_9
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_2

    .line 424
    :cond_a
    const-string v11, "Literal"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 426
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeLiteralPropertyElement()V

    goto :goto_2

    .line 428
    :cond_b
    const-string v11, "Resource"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 430
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_2

    .line 432
    :cond_c
    const-string v11, "Collection"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 434
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeCollectionPropertyElement()V

    goto :goto_2

    .line 438
    :cond_d
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeOtherPropertyElement()V

    goto/16 :goto_2

    .line 407
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 448
    .end local v0    # "attrLocal":Ljava/lang/String;
    .end local v1    # "attrNS":Ljava/lang/String;
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v3    # "attribute":Lorg/w3c/dom/Node;
    :cond_f
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 450
    const/4 v6, 0x0

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_11

    .line 452
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 453
    .local v5, "currChild":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_10

    .line 455
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 450
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 460
    .end local v5    # "currChild":Lorg/w3c/dom/Node;
    :cond_11
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2

    .line 464
    :cond_12
    invoke-static/range {p0 .. p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto/16 :goto_2
.end method

.method private static rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 5
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlParent"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 285
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 286
    .local v0, "currChild":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 292
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string v3, "Expected property element node not found"

    const/16 v4, 0xca

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 296
    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_1

    .line 299
    .end local v0    # "currChild":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method static rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "rdfRdfNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 17
    .param p0, "xmp"    # Lcom/adobe/xmp/impl/XMPMetaImpl;
    .param p1, "xmpParent"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "xmlNode"    # Lorg/w3c/dom/Node;
    .param p3, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 489
    if-eqz p3, :cond_1

    const-string v14, "iX:changes"

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 600
    :cond_0
    return-void

    .line 495
    :cond_1
    const-string v14, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v14, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    .line 498
    .local v12, "newCompound":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v10, v14, :cond_6

    .line 500
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 501
    .local v6, "attribute":Lorg/w3c/dom/Node;
    const-string/jumbo v14, "xmlns"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 502
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "xmlns"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 498
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 507
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "attrLocal":Ljava/lang/String;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "attrNS":Ljava/lang/String;
    const-string/jumbo v14, "xml:lang"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 511
    const-string/jumbo v14, "xml:lang"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 513
    :cond_4
    const-string v14, "ID"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 519
    :cond_5
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Invalid attribute for resource property element"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 526
    .end local v4    # "attrLocal":Ljava/lang/String;
    .end local v5    # "attrNS":Ljava/lang/String;
    .end local v6    # "attribute":Lorg/w3c/dom/Node;
    :cond_6
    const/4 v8, 0x0

    .line 527
    .local v8, "currChild":Lorg/w3c/dom/Node;
    const/4 v9, 0x0

    .line 529
    .local v9, "found":Z
    const/4 v10, 0x0

    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v10, v14, :cond_11

    .line 531
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 532
    invoke-static {v8}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 534
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    if-nez v9, :cond_f

    .line 536
    const-string v14, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 537
    .local v11, "isRDF":Z
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    .line 539
    .local v7, "childLocal":Ljava/lang/String;
    if-eqz v11, :cond_a

    const-string v14, "Bag"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 541
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 568
    :cond_7
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v8, v14}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 570
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 572
    invoke-static {v12}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 579
    :cond_8
    :goto_4
    const/4 v9, 0x1

    .line 529
    .end local v7    # "childLocal":Ljava/lang/String;
    .end local v11    # "isRDF":Z
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 543
    .restart local v7    # "childLocal":Ljava/lang/String;
    .restart local v11    # "isRDF":Z
    :cond_a
    if-eqz v11, :cond_b

    const-string v14, "Seq"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 545
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 547
    :cond_b
    if-eqz v11, :cond_c

    const-string v14, "Alt"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 549
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    .line 550
    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_3

    .line 554
    :cond_c
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 555
    if-nez v11, :cond_7

    const-string v14, "Description"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 557
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    .line 558
    .local v13, "typeName":Ljava/lang/String;
    if-nez v13, :cond_d

    .line 560
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "All XML elements must be in a namespace"

    const/16 v16, 0xcb

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 563
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 564
    const-string v14, "rdf:type"

    invoke-static {v12, v14, v13}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto/16 :goto_3

    .line 574
    .end local v13    # "typeName":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 576
    invoke-static {v12}, Lcom/adobe/xmp/impl/XMPNodeUtils;->detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_4

    .line 581
    .end local v7    # "childLocal":Ljava/lang/String;
    .end local v11    # "isRDF":Z
    :cond_f
    if-eqz v9, :cond_10

    .line 584
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Invalid child of resource property element"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 589
    :cond_10
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Children of resource property element must be XML elements"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 595
    :cond_11
    if-nez v9, :cond_0

    .line 598
    new-instance v14, Lcom/adobe/xmp/XMPException;

    const-string v15, "Missing child of resource property element"

    const/16 v16, 0xca

    invoke-direct/range {v14 .. v16}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v14
.end method
