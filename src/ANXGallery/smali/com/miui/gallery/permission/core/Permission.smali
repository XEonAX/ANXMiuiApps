.class public Lcom/miui/gallery/permission/core/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/permission/core/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDesc:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mPermissionGroup:Ljava/lang/String;

.field public final mRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/permission/core/Permission$1;

    invoke-direct {v0}, Lcom/miui/gallery/permission/core/Permission$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/permission/core/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mDesc:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/permission/core/Permission;->mRequired:Z

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "permissionGroup"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "required"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/miui/gallery/permission/core/Permission;->mName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/miui/gallery/permission/core/Permission;->mDesc:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/miui/gallery/permission/core/Permission;->mRequired:Z

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 56
    instance-of v0, p1, Lcom/miui/gallery/permission/core/Permission;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    check-cast p1, Lcom/miui/gallery/permission/core/Permission;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mPermissionGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/permission/core/Permission;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/permission/core/Permission;->mRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
