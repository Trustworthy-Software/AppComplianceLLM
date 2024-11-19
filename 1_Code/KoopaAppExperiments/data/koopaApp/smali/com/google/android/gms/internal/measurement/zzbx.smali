.class public Lcom/google/android/gms/internal/measurement/zzbx;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbx;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    invoke-virtual {p0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbx;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    nop

    .line 8
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbx;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    const/4 p1, 0x1

    return p1

    .line 14
    :cond_1
    nop

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzbx;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method protected zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    const/4 p1, 0x0

    return p1
.end method
