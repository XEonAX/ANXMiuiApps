.class public Lcom/miui/gallery/data/LocalUbifocus$SubFile;
.super Ljava/lang/Object;
.source "LocalUbifocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalUbifocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubFile"
.end annotation


# instance fields
.field public mFilePath:Ljava/lang/String;

.field public mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mFilePath:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mIndex:I

    .line 37
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method
