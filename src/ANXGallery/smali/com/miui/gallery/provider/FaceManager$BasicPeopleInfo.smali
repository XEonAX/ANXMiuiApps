.class public Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicPeopleInfo"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public relationType:I

.field public serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "relationType"    # I

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput p1, p0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->id:I

    .line 955
    iput-object p2, p0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->serverId:Ljava/lang/String;

    .line 956
    iput-object p3, p0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->name:Ljava/lang/String;

    .line 957
    iput p4, p0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->relationType:I

    .line 958
    return-void
.end method
