Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB54104AEC
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 08:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9BK+8VWEdwNJ16NLOIbVoXKyPaiCPAkwcMyIr8jCy8=; b=d8WjjHXrPoSqL8
	dtVx+Oo6pyJ8ioaRSnab70AaYeh7nbxola3bAkp5SlHFoQa8GsyXjmZ14l2YUnnp29qOFc/d9kVYi
	G4E1vnRk/1wxd2wDC+0Yqqqceapl30woMWVHImE36glQDlXh124zn+bcOhUjosEApdNPATZ+0+m7M
	LBcuR9+mKctvLNRxE+E9shjLzNru64hIwt3cbvHQyZGpiW/nNHZloJTKwWsm9Y43DhPw1JT+JZBWF
	fO9R3u+RbBsoBZQrs6VF5m1XDP706G5CnfT0CA00ok2maT/QqZWyas3ty//X6my2AF/5y59tw97sn
	rYDNPLfrq/PXO2c/fY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgSg-0005pF-GL; Thu, 21 Nov 2019 07:01:06 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgSb-0005no-Q2
 for linux-mediatek@lists.infradead.org; Thu, 21 Nov 2019 07:01:03 +0000
Received: by mail-il1-x12b.google.com with SMTP id s75so2268240ilc.3
 for <linux-mediatek@lists.infradead.org>; Wed, 20 Nov 2019 23:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=70XhVJoIf0CSjHrTRztFdyaZcM5N+1vNz44dhwcRPXw=;
 b=SLYBtyriQY7seuHEQlL2JSt3ilAFTLCs46gN0dKVPB6PjkBZRqNh7NltQlrIcE52WM
 NS1NEPu5eptOkKJvpE2HSpv/lFbdetda9B7b5w8JK7jknek+pKEqkv06FYxZ3lzN0R6J
 Cwg+Cbs8vlomam8/SjUZutICyodcTjUUrT+50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=70XhVJoIf0CSjHrTRztFdyaZcM5N+1vNz44dhwcRPXw=;
 b=aPauQKfvbsWFpBqpmxBey0TvwX2eVW/KqAgVDir3BJOA25CyEU1+JPKjdWxqF5Cb2p
 PJLiNh7Tl3pM5v9c/6hayBZxodM5t2wYaAkYZKHHxuvfBUffSvGS5StBVwhG6NFcDT67
 BBeBoKeNtKaJMUIgEC84EJcq2ShHJJmM54PGeYh8cowWUFRcuNgby3cx71m2ZOq5xm0+
 cHWlvLRkVspwfDcjO4KUaliUqhOEORoos4k75lXSI2pwE5nTY56oUAZRkLJHRQECDo1S
 ppoQCS0I/kcGPKHTOa5Geca2t0Y1+R6H8Zf4kUDj0sNtCPE1kyqdXAMwR5je9OWI9baM
 6Y7Q==
X-Gm-Message-State: APjAAAV5Ke+FabvyCs0dbfO+ikJGHxLeqCTB5LWOxTdPdCP7W5H7fLkm
 icrR1ettu0/qTrzC2HlzZ/0XBXXEoqbIikHx8N8iZg==
X-Google-Smtp-Source: APXvYqz3PHqe/dC8SrMLZ7oJb4SyckZc5EJzgX4VS4wAMnE4d3D2dWe3D5r10a6CIdA4f7qoQvzM2VsFlosI14iwemI=
X-Received: by 2002:a92:5d08:: with SMTP id r8mr8154845ilb.283.1574319657713; 
 Wed, 20 Nov 2019 23:00:57 -0800 (PST)
MIME-Version: 1.0
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 21 Nov 2019 15:00:31 +0800
Message-ID: <CAJMQK-ivho3T1hnD9axV2EMKT3Srs_5zAXLqwts8nojY15fBGg@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_230101_874987_362D8631 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:

> -       tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
> -                                                    &mtk_thermal_ops);
> -       if (IS_ERR(tzdev)) {
> -               ret = PTR_ERR(tzdev);
> -               goto err_disable_clk_peri_therm;
> +       for (i = 0; i < mt->conf->num_sensors + 1; i++) {
> +               tz = kmalloc(sizeof(*tz), GFP_KERNEL);
> +               if (!tz)
> +                       return -ENOMEM;
> +
> +               tz->mt = mt;
> +               tz->id = i;
> +
> +               tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
> +                               tz, (i == 0) ?
> +                               &mtk_thermal_ops : &mtk_thermal_sensor_ops);
> +
> +               if (IS_ERR(tzdev)) {
> +                       if (IS_ERR(tzdev) != -EACCES) {
                                PTR_ERR(tzdev)

> +                               ret = PTR_ERR(tzdev);
> +                               goto err_disable_clk_peri_therm;
> +                       }
> +               }

This for loop adding thermal zone sensors will not work for mt8173. It
assumes that thermal-zones in dts have subnodes (eg. cpu_thermal,
tzts..) amount equal to num_sensors+1. Otherwise tzdev would be
-ENODEV and thermal failed to be probed.
In mt8183 this is fine, since each thermal zone only has one sensor,
but in mt8173, some sensor appears in multiple thermal zones.

In order to let the change also works for 8173, I think if the error
is -ENODEV, and the id is not 0 (0 is cpu_thermal), prompt a warning
instead of failing. Eg.

                if (IS_ERR(tzdev)) {
+                       if (i > 0 && PTR_ERR(tzdev) == -ENODEV) {
+                               dev_warn(&pdev->dev, "can't find
thermal sensor %d\n", i);
+                               continue;
+                       }
                        if (PTR_ERR(tzdev) != -EACCES) {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
