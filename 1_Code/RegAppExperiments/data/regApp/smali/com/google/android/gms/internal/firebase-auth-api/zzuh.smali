.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzuh;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuh;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 31
    return-void
.end method

.method private final zza(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzf:I

    .line 37
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzub;)V
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zze:I

    .line 35
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzub;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzub;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuh;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuh;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzf:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzui;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 15
    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 21
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_1
    :goto_0
    return-object p1

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    return-object p1

    .line 10
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u000b"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzui;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzub;
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    move-result-object v0

    .line 3
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    :cond_0
    return-object v0
.end method
