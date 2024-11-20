.class final Lcom/google/android/gms/measurement/internal/zzgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzv;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzs;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    goto :goto_0

    .line 17
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 18
    goto :goto_0

    .line 11
    :pswitch_1
    if-eqz p4, :cond_0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzw()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    if-nez p5, :cond_1

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 16
    goto :goto_0

    .line 5
    :pswitch_2
    if-eqz p4, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    if-nez p5, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 10
    goto :goto_0

    .line 3
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    .line 4
    nop

    .line 20
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_1

    .line 27
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 28
    return-void

    .line 25
    :pswitch_4
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void

    .line 23
    :pswitch_5
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void

    .line 21
    :pswitch_6
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
