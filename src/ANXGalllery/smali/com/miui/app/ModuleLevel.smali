.class public final Lcom/miui/app/ModuleLevel;
.super Lcom/miui/utils/LazyConst;
.source "ModuleLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/utils/LazyConst",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/utils/LazyConst;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/app/ModuleLevel;->mModuleName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected onInit(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/app/ModuleLevel;->mModuleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/util/AppConstants;->getSdkLevel(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onInit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/app/ModuleLevel;->onInit(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
