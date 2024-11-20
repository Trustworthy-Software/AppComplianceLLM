.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzur;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzur;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzur;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 34
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)V
    .locals 0

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzg:I

    .line 39
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzum;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzf:I

    .line 41
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zze:I

    .line 43
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;Lcom/google/android/gms/internal/firebase-auth-api/zzum;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzum;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/firebase-auth-api/zzur;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzur;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v0

    .line 2
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    :cond_0
    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzus;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 18
    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 24
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 25
    :cond_1
    :goto_0
    return-object p1

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    return-object p1

    .line 13
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 14
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u0003\u000c"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzur$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzus;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;-><init>()V

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

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzum;
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    :cond_0
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    :cond_0
    return-object v0
.end method
