.class public Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzagw;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzagw<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagw;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    nop

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    nop

    .line 27
    nop

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 30
    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zze:I

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    .line 33
    nop

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 35
    nop

    .line 36
    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    return-object p0

    .line 6
    :cond_0
    nop

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzi()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    return-object p0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzagw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    return-object v0

    .line 13
    :cond_0
    nop

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 15
    throw v1
.end method

.method public zze()Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzs()V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    return-object v0
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object v0

    return-object v0
.end method

.method protected final zzh()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzi()V

    .line 47
    :cond_0
    return-void
.end method

.method protected zzi()V
    .locals 2

    .line 48
    nop

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object v0

    .line 50
    nop

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 53
    return-void
.end method

.method public final synthetic zzr()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1

    .line 23
    nop

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 25
    return-object v0
.end method

.method public final zzu()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Z)Z

    move-result v0

    return v0
.end method
