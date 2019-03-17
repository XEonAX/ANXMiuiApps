.class public Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
.super Ljava/lang/Object;
.source "AlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field private mAutoUpload:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto-upload"
    .end annotation
.end field

.field private mHide:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hide"
    .end annotation
.end field

.field private mInWhiteList:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in-whitelist"
    .end annotation
.end field

.field private mManualRenameRestricted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manual-rename-restricted"
    .end annotation
.end field

.field private mShowInPhotosTab:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show-in-photos-tab"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoUpload()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mAutoUpload:Z

    return v0
.end method

.method public isHide()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mHide:Z

    return v0
.end method

.method public isInWhiteList()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mInWhiteList:Z

    return v0
.end method

.method public isManualRenameRestricted()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mManualRenameRestricted:Z

    return v0
.end method

.method public isShowInPhotosTab()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mShowInPhotosTab:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes{mHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mAutoUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowInPhotosTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mShowInPhotosTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInWhiteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mInWhiteList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManualRenameRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->mManualRenameRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
