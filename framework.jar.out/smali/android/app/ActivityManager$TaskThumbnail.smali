.class public Landroid/app/ActivityManager$TaskThumbnail;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskThumbnail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskThumbnail$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$TaskThumbnail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mainThumbnail:Landroid/graphics/Bitmap;

.field public thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2062
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnail$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnail$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskThumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2004
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnail;->readFromParcel(Landroid/os/Parcel;)V

    .line 2012
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 2020
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 2045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 2050
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2055
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2056
    sget-object v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 2044
    :goto_2
    return-void

    .line 2048
    :cond_0
    iput-object v1, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 2053
    :cond_1
    iput-object v1, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    .line 2058
    :cond_2
    iput-object v1, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2024
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2025
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2030
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 2031
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2036
    :goto_1
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    if-eqz v0, :cond_2

    .line 2037
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    iget-object v0, p0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2023
    :goto_2
    return-void

    .line 2028
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2034
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2040
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
