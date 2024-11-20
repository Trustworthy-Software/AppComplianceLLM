.class public final Lcom/google/firebase/auth/internal/zzs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/firebase/auth/internal/zzp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .line 1
    nop

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 3
    nop

    .line 4
    nop

    .line 5
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v4

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 18
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 19
    goto :goto_0

    .line 15
    :pswitch_0
    sget-object v3, Lcom/google/firebase/auth/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/zzf;

    .line 17
    goto :goto_0

    .line 12
    :pswitch_1
    sget-object v2, Lcom/google/firebase/auth/internal/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/zzn;

    .line 14
    goto :goto_0

    .line 9
    :pswitch_2
    sget-object v1, Lcom/google/firebase/auth/internal/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zzv;

    .line 11
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 21
    new-instance p1, Lcom/google/firebase/auth/internal/zzp;

    invoke-direct {p1, v1, v2, v3}, Lcom/google/firebase/auth/internal/zzp;-><init>(Lcom/google/firebase/auth/internal/zzv;Lcom/google/firebase/auth/internal/zzn;Lcom/google/firebase/auth/zzf;)V

    .line 22
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    nop

    .line 26
    new-array p1, p1, [Lcom/google/firebase/auth/internal/zzp;

    .line 27
    return-object p1
.end method
