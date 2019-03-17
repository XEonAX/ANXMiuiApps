.class public Lcom/miui/gallery/dao/base/TableColumn;
.super Ljava/lang/Object;
.source "TableColumn.java"


# instance fields
.field protected defaultValue:Ljava/lang/String;

.field protected isUnique:Z

.field protected name:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/miui/gallery/dao/base/TableColumn;->type:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/miui/gallery/dao/base/TableColumn;->type:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/miui/gallery/dao/base/TableColumn;->defaultValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "isUnique"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/miui/gallery/dao/base/TableColumn;->type:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    .line 35
    return-void
.end method
