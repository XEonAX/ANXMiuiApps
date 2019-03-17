.class public Lcom/miui/gallery/agreement/core/Agreement;
.super Ljava/lang/Object;
.source "Agreement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/agreement/core/Agreement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mLink:Ljava/lang/String;

.field public final mRequired:Z

.field public final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/miui/gallery/agreement/core/Agreement$1;

    invoke-direct {v0}, Lcom/miui/gallery/agreement/core/Agreement$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/agreement/core/Agreement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mText:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mLink:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mRequired:Z

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "required"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/agreement/core/Agreement;->mText:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/miui/gallery/agreement/core/Agreement;->mLink:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/miui/gallery/agreement/core/Agreement;->mRequired:Z

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lcom/miui/gallery/agreement/core/Agreement;->mRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
