.class public Lmiui/yellowpage/ModuleIntent;
.super Ljava/lang/Object;
.source "ModuleIntent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b11fbb892e95L


# instance fields
.field private mHotId:I

.field private mHotShowCount:I

.field private mIntent:Landroid/content/Intent;

.field private mModuleId:I

.field private mSubItemsFlag:Z

.field private mSubModuleIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "moduleId"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    .line 30
    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "moduleId"    # I
    .param p4, "subItemsFlag"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    .line 36
    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    .line 37
    iput-boolean p4, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IZII)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "moduleId"    # I
    .param p4, "subItemsFlag"    # Z
    .param p5, "hotId"    # I
    .param p6, "hotShowCount"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 42
    iput p5, p0, Lmiui/yellowpage/ModuleIntent;->mHotId:I

    .line 43
    iput p6, p0, Lmiui/yellowpage/ModuleIntent;->mHotShowCount:I

    .line 44
    return-void
.end method


# virtual methods
.method public getHotId()I
    .locals 1

    .line 20
    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mHotId:I

    return v0
.end method

.method public getHotShowCount()I
    .locals 1

    .line 16
    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mHotShowCount:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 47
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 55
    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    return v0
.end method

.method public getSubItemsFlag()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    return v0
.end method

.method public getSubModuleIntent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setSubModuleIntent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "subModuleIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    .line 68
    return-void
.end method
