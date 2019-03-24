.class public Lmiui/provider/CloudPushProvider$Watermark;
.super Ljava/lang/Object;
.source "CloudPushProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CloudPushProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "type"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lmiui/provider/CloudPushProvider$Watermark;->mName:Ljava/lang/String;

    .line 114
    iput-wide p2, p0, Lmiui/provider/CloudPushProvider$Watermark;->mValue:J

    .line 115
    iput-object p4, p0, Lmiui/provider/CloudPushProvider$Watermark;->mType:Ljava/lang/String;

    .line 116
    return-void
.end method
