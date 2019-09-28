Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A56C10CD
	for <lists+linux-mediatek@lfdr.de>; Sat, 28 Sep 2019 14:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvtQUnX63YX/YmzkoHdd1Hur9/DL1uo6ZoAfpMlpTMg=; b=D7S58pDXJ21SqW
	5dxG2k9fKnx3jTfe0DrfeeCP85Bfz/VY58gEzA4IwBfPIEKdgNvESyiQ+Rq00uvXsAfIBRZgexFAM
	KLQmis5NH/fJATi9cLK5E4fG9ySBf3qB8GziHqQkd9vcag5U6Oj4RjF7WrHijURkjpkUz5emtR7jq
	vPYXtrtGP9aPjNZ0kqtpHYgIUFeVb3Imw39tcqcjFWJo44fOTh1iJsETpREwQjltPNvRx5uabu1CC
	MbsYhlrnX++EKDO3YIvUknoi3peVnkLtcRmNXS23M6rb7U/qZQf3CrZs9kOmeAPXxU77YXH3jpSfq
	hKoSbS8StCDws+t7UcvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBfJ-0004Yt-U8; Sat, 28 Sep 2019 12:17:33 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBfF-0004YE-3i
 for linux-mediatek@lists.infradead.org; Sat, 28 Sep 2019 12:17:32 +0000
Received: by mail-ed1-x541.google.com with SMTP id p10so4579295edq.1
 for <linux-mediatek@lists.infradead.org>; Sat, 28 Sep 2019 05:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
 b=f3xx81X7mWXH4CeG5AZFssab+cToO6mGAOOHEKmFloqLfr62ldyeY0Z7oewGlBco4f
 bhRASLKwwg+bRdpnaJKDTAlc7HNc+AJmxufJJbD2Okav13mJwFv/DiEpWuXbsM/f/Dtm
 rZe9V+Fvu+CF0Q2I6P8nHmnbViET59+QugGsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
 b=qD7fA4mj3KL/Tkv1Z7c+2T8DuqBa8L5JfVQhaUE0F4HzHhQv9O50XpRT3Qvy34eC/k
 UlZb+wyWHdrFcxg97A4nZiIcMIuTy5lH5982QzZoZCZlcSr2nwQWEyBLeaOWz9t5si6L
 rRLaxzMmYQz4hLL9s+hCf92VRKXYpW82uBtOXAXlaxd+oeE76ynvT9SZIiMxnZqUo1WW
 QkGNLoCqgCNqq5+IKNIQf6B1NLggFgQtGh1rr/+XraJnboIbWKjr2rWfVULkdMt5RlLH
 W/GC2j7SpcJ4Vz9uXvGK4h3JN9bm0fkEDSKJmAz6qsYIT9LS9IXmmx0Q2DPHPm/cg769
 y3bQ==
X-Gm-Message-State: APjAAAXa1LmoUM5OQ4V3caiE+4ZL1ACWLqh2EoSU6Vs9pf+6LgQth7y9
 mpo/HPn1PqDW7EJ11TTrajVBtEmmIY0h4Q==
X-Google-Smtp-Source: APXvYqxHYkX1xh9So++1AU9MbjFj09YQCm3d3ml7XLRJ4Cz33TTjtqeuIKGA7f8RTEdJruNdbYrW+w==
X-Received: by 2002:a17:906:52d8:: with SMTP id
 w24mr11412009ejn.6.1569673046710; 
 Sat, 28 Sep 2019 05:17:26 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id z39sm1172495edd.46.2019.09.28.05.17.24
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 05:17:25 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id f22so8055906wmc.2
 for <linux-mediatek@lists.infradead.org>; Sat, 28 Sep 2019 05:17:24 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr11383304wme.116.1569673044123; 
 Sat, 28 Sep 2019 05:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
 <20190927071824.18675-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20190927071824.18675-2-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 28 Sep 2019 21:17:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: ov5695: Modify the function of async register
 subdev related devices
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_051729_177986_4AA2A6FC 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 shengnan.wang@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 4:18 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> This patch adds support for registering a sensor sub-device to the async sub-device framework and parse set up common
> sensor related devices such as actuator/VCM.

nit: The description should be wrapped around the 80th column.

Sakari, do we need to resent or you could just rewrap when applying?

>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  drivers/media/i2c/ov5695.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/media/i2c/ov5695.c b/drivers/media/i2c/ov5695.c
> index e65a943..b6ee62c 100644
> --- a/drivers/media/i2c/ov5695.c
> +++ b/drivers/media/i2c/ov5695.c
> @@ -1328,7 +1328,7 @@ static int ov5695_probe(struct i2c_client *client,
>                 goto err_power_off;
>  #endif
>
> -       ret = v4l2_async_register_subdev(sd);
> +       ret = v4l2_async_register_subdev_sensor_common(sd);
>         if (ret) {
>                 dev_err(dev, "v4l2 async register subdev failed\n");
>                 goto err_clean_entity;
> --
> 2.9.2
>

Otherwise:

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
