Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872CD4C656
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 06:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJguqCmAh7TTleGl+msqRCkSCe+zZDpDeOvufYjPuU8=; b=pO06eybK1siFIZ
	t4MwHmGuoKVqPuFJ56AVDIuOx5cbN5wCSeNpudv+Vp7j19BPKKO8yM3JOAk4Iwg+vvSrSRUr9igfC
	owgck2Bw4sfBKIljjDs9a0I1MiNYw13MD9GtB5w8uPkAQW2JbGu3GVDpxTLLa+llAQM/sQY1LItHD
	Pi3grFqi8UEW7bNgaDX8q3TtiNrjpe5xZoH9x05Y533SehlRndFWsF3X5vQjEk1dixVgiHkGL5Tbv
	87EvRgulaL3E7+fRIa17Grgqk/F0slztfwDt2a97N443FVUebwU5X6oRhGedGMJwJdx4hqnQaBZYk
	vCRxDJZ+B1WiTnc/G9HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdp0B-00016j-6x; Thu, 20 Jun 2019 04:48:47 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdozv-0000x5-JQ
 for linux-mediatek@lists.infradead.org; Thu, 20 Jun 2019 04:48:33 +0000
Received: by mail-ot1-x343.google.com with SMTP id n5so1467992otk.1
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 21:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
 b=Yl5NlZzQPUN5Tci0Gf50JsXP4Oo8dpYdihclnZeT66LEb3dxzRiJhHirLoaUqRkGN3
 nd7drf2dBhfS2HA3AMSoOGDADxhZ4nLpQMvB1T2hAahMGJBa0/7+xUJ7aJ0B4ypcW6e5
 BSNJ2PwbPrdk+BCyPhpWGOWiUVhuLmDA6DGw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
 b=UxVwyYiEhNVNeZ5y5d1AuToHZi7MhRZRK03WoKoTCiVljxkQuvhrhC8zvYPZ+JVi9H
 3NJ0P5hCXzot2xD2QEDAhaaS3N1WkAb/jHLpLWemr/C3dHhXnhL+zHGCwkJWiWJxN2VU
 a1B4qANj1VYcz4er3bKfIPBOKlEWwTDfVpXklZu6tDXS6rvkXCp+9tVIrrBLYrsNdqTm
 zfdBds3U9WtXeqijeZUE/rFH2/OvJ2xd1Q7RT4NThh8aBWqC97fGocg/mhRfZeS3og54
 y4dRILmbB7++3H/qDOUDuuOWtI65y474VktPlfOCs17uQKWOEMOnAnHj7jo1fLecSK2s
 JBww==
X-Gm-Message-State: APjAAAUdtY7iJGoTGnPhyXIVELbjizwKnZwWc165RP9/HZzA7mRGkl5v
 9SZ6P8KgXjrx03Gk7FZ6DYjbiRKUvqEzVA==
X-Google-Smtp-Source: APXvYqw0+kv9cXBeNjYxXaKK8nDT0+o3V7JnuLdEYFYSXBdZFxIg1wOiw1Gg+g795JZbpqpZzX1rlA==
X-Received: by 2002:a9d:7a8b:: with SMTP id l11mr6329084otn.247.1561006109398; 
 Wed, 19 Jun 2019 21:48:29 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id o3sm7094033otl.76.2019.06.19.21.48.27
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 21:48:28 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id s20so1454029otp.4
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 21:48:27 -0700 (PDT)
X-Received: by 2002:a9d:3ee:: with SMTP id f101mr10192019otf.311.1561006107360; 
 Wed, 19 Jun 2019 21:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com>
 <20190604112039.GA12168@chromium.org>
In-Reply-To: <20190604112039.GA12168@chromium.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Thu, 20 Jun 2019 13:48:15 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_214831_643377_1F154095 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn.Wu@mediatek.com, christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>, holmes.chiou@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 8:20 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > +
> > +     ret = mdp_vpu_get_locked(mdp);
> > +     if (ret < 0)
> > +             goto err_load_vpu;
>
> This shouldn't happen in open(), but rather the latest possible point in
> time. If one needs to keep the VPU running for the time of streaming, then
> it should be start_streaming. If one can safely turn the VPU off if there is
> no frame queued for long time, it should be just in m2m job_run.
>
> Generally the userspace should be able to
> just open an m2m device for querying it, without any side effects like
> actually powering on the hardware or grabbing a hardware instance (which
> could block some other processes, trying to grab one too).

OTOH looking at the code of mdp_vpu_get_locked(), we do the whole
rproc_boot and VPU init procedure if we were the only user. So I can
understand we want to avoid doing this too often.

Maybe mdp_vpu_get_locked() can be reorganized in a better way. I feel
like the call to mdp_vpu_register() should be done in probe, and maybe
we can use runtime PM (with a reasonable timeout) to control the rproc
and VPU init?


>
> > +
> > +     mutex_unlock(&mdp->m2m_lock);
> > +
> > +     mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
> > +
> > +     return 0;
> > +
> > +err_load_vpu:
> > +     mdp_frameparam_release(ctx->curr_param);
> > +err_param_init:
> > +     v4l2_m2m_ctx_release(ctx->m2m_ctx);
> > +err_m2m_ctx:
> > +     v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> > +     v4l2_fh_del(&ctx->fh);
> > +err_ctrls_create:
> > +     v4l2_fh_exit(&ctx->fh);
> > +     mutex_unlock(&mdp->m2m_lock);
> > +err_lock:
>
> Incorrect naming of all the error labels here.
>
> > +     kfree(ctx);
> > +
> > +     return ret;
> > +}
> [snip]
> > +enum mdp_ycbcr_profile mdp_map_ycbcr_prof_mplane(struct v4l2_format *f,
> > +                                              u32 mdp_color)
> > +{
> > +     struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > +
> > +     if (MDP_COLOR_IS_RGB(mdp_color))
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +
> > +     switch (pix_mp->colorspace) {
> > +     case V4L2_COLORSPACE_JPEG:
> > +             return MDP_YCBCR_PROFILE_JPEG;
> > +     case V4L2_COLORSPACE_REC709:
> > +     case V4L2_COLORSPACE_DCI_P3:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT709;
> > +             return MDP_YCBCR_PROFILE_BT709;
> > +     case V4L2_COLORSPACE_BT2020:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT2020;
> > +             return MDP_YCBCR_PROFILE_BT2020;
> > +     }
> > +     /* V4L2_COLORSPACE_SRGB or else */
> > +     if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +     return MDP_YCBCR_PROFILE_BT601;
>
> Putting this under the default clause of the switch statement would be
> cleaner and the comment wouldn't be needed.
>
> [snip]
> > +struct mdp_frameparam *mdp_frameparam_init(void)
> > +{
> > +     struct mdp_frameparam *param;
> > +     struct mdp_frame *frame;
> > +
> > +     param = kzalloc(sizeof(*param), GFP_KERNEL);
> > +     if (!param)
> > +             return ERR_PTR(-ENOMEM);
>
> We could just embed mdp_frameparam into the mdp_m2m_ctx struct and then
> wouldn't need any dynamic allocation here anymore. And as a side effect, the
> function could be just made void, because it couldn't fail.
>
> > +
> > +     INIT_LIST_HEAD(&param->list);
> > +     mutex_init(&param->lock);
> > +     param->state = 0;
> > +     param->limit = &mdp_def_limit;
> > +     param->type = MDP_STREAM_TYPE_UNKNOWN;
>
> We always seem to use MDP_STREAM_TYPE_BITBLT in this driver.
>
> > +     param->frame_no = 0;
>
> No need for explicit initialization to 0.
>
> Best regards,
> Tomasz
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
