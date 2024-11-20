.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzuv;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuv;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 33
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzuv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    return-object p0
.end method

.method private final zza(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf:I

    .line 45
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 43
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 39
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zze:I

    .line 40
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;I)V
    .locals 0

    .line 34
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuv;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuv;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzf:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzuw;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 25
    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 22
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_1
    :goto_0
    return-object p1

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    return-object p1

    .line 11
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzh"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuw;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;-><init>()V

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

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzur;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0
.end method

.method public final zzg()Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuv;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
