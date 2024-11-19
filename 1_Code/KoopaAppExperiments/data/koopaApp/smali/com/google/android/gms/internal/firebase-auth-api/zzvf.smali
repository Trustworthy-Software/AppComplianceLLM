.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvf;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvf;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;-><init>()V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    .line 23
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zze:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzf:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzi:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzve;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19
    :pswitch_0
    return-object p2

    .line 18
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 10
    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_1
    :goto_0
    return-object p1

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    return-object p1

    .line 5
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzh"

    const-string v1, "zzi"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V

    return-object p1

    .line 3
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;-><init>()V

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
