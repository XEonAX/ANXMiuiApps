.class public abstract Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;
.super Ljava/lang/Object;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnInstallPackageListener"
.end annotation


# static fields
.field public static kEvent_installOk:I

.field public static kEvent_linstallFail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;->kEvent_installOk:I

    .line 1220
    const/4 v0, -0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;->kEvent_linstallFail:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCompleted(II)V
.end method

.method public abstract onProgress(III)V
.end method
