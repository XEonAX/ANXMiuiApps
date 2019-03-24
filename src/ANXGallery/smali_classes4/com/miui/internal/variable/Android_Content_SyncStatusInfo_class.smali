.class public abstract Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Content_SyncStatusInfo_class$Factory;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "android.content.SyncStatusInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInitialize(Ljava/lang/Object;)Z
.end method

.method public abstract getLastFailureMesgAsInt(Ljava/lang/Object;I)I
.end method

.method public abstract getLastFailureTime(Ljava/lang/Object;)J
.end method

.method public abstract getLastSuccessTime(Ljava/lang/Object;)J
.end method

.method public abstract getPending(Ljava/lang/Object;)Z
.end method
