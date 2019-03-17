.class public interface abstract Lcom/uploader/export/IUploaderEnvironment;
.super Ljava/lang/Object;
.source "IUploaderEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/export/IUploaderEnvironment$Definition;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x2

.field public static final ONLINE:I = 0x0

.field public static final PREPARED:I = 0x1


# virtual methods
.method public abstract decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
.end method

.method public abstract enableFlowControl()Z
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getEnvironment()I
.end method

.method public abstract getInstanceType()I
.end method

.method public abstract getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUtdid()Ljava/lang/String;
.end method

.method public abstract putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I
.end method

.method public abstract signature(Ljava/lang/String;)Ljava/lang/String;
.end method
