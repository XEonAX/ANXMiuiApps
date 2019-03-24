.class public final Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TelocationWorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie1:Ljava/lang/Object;

.field public cookie2:Ljava/lang/Object;

.field public cookie3:Ljava/lang/Object;

.field public cookie4:Ljava/lang/Object;

.field public handler:Landroid/os/Handler;

.field public location:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

.field public phoneNumber:Ljava/lang/String;

.field public telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

.field public telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
