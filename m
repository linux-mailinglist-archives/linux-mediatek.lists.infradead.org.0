Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C570CDD
	for <lists+linux-mediatek@lfdr.de>; Tue, 23 Jul 2019 00:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Av38ys5+yMjgDbGYoJi6Gtwn5TOvG7R2PsZNo3GAj0=; b=nB7Pv0bNucpcYY
	pYSxaJn+8y3s3jy0VjAwq08x+PvQk5Ctty3ij9qt/v6PwykSOfSQuJI5q1cXfMF7L3h7j1X4PEbRr
	CfKM78SidRNpzfYbyyHgw0mfAr1fMm8gflL3I4K2TFcslE3WtYCTw9dIi7XwG1tI2NA4pVe7nATJQ
	A+06uYstgJtrlfDRV11uuXz6nCUiMKj4iU9/TcQ6BYZKjw+0BVcQAIAUCJ6TqnfDD2BXKsypufTMi
	hH0n49YKLHzZD39PELgIsTAkMiifgGiG0m9jP9V8DDyyHYyx2kz80XuXsycvp2AQsMfJuuJBCp0Vb
	2jqMoXOuDZsBcolOvsTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphAX-0004Vn-Tt; Mon, 22 Jul 2019 22:52:34 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hph9i-0004Ig-55; Mon, 22 Jul 2019 22:51:43 +0000
Received: by mail-io1-f65.google.com with SMTP id g20so77647873ioc.12;
 Mon, 22 Jul 2019 15:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sYRqGzsa2Mqfa8UCEWc+Q6d3arkBPq6mEZsIpfw+fso=;
 b=qGUyQ8+eWbLU7Y0y0gxcUlOYh3UPiHl3jiO1tL2Ani4Ski45a4xRcjvEpi8dMeDJKh
 epLW1vpiyc/ugFUra41ssZJM29OBSkNB7ExNVpkv1btQCCFU8KCTPM/u/3HGPh6QWpcf
 B7LT9ma73d9qsq0rvkHcOVSQLYtzcRS2u9tUMs252p9e7XMBB8ym/OpKiUmL+H5HwmvT
 l5/eZuIFQVp0r49aAqihs/OtzfIUEaUuoriDwHebKJ5Bu6M48gHYHUN5yx1HNdYt92EV
 TceGANHQFNsKv+rJ35mmxojBB0eUBA/NgjTI7pTKUVnHtyOBGrMWYHYDiX3wJpqUYSi0
 lcVA==
X-Gm-Message-State: APjAAAXNPlL6kA9eGq/oqsxS1KL9S51PiPQvRSgoWLiTJuC440VW/SYT
 Zrc+6Fa2x7Pbfg1vbml4dQ==
X-Google-Smtp-Source: APXvYqxFG3cem2D0uzg43tQTtA1WyJdJngPhgAlqWXVNUVcQmwLGOFIjnFebC9eNH3FaJ4tc0VmjRg==
X-Received: by 2002:a5d:8d12:: with SMTP id p18mr65859087ioj.251.1563835901424; 
 Mon, 22 Jul 2019 15:51:41 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id k5sm46038653ioj.47.2019.07.22.15.51.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:51:40 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:51:40 -0600
From: Rob Herring <robh@kernel.org>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH 1/3] bindings: rtc: add bindings for MT2712 RTC
Message-ID: <20190722225140.GA30571@bogus>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
 <20190702032120.16539-2-ran.bi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702032120.16539-2-ran.bi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_155142_199964_38204B58 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Flora Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2 Jul 2019 11:21:18 +0800, Ran Bi wrote:
> Document the binding for MT2712 RTC implemented by rtc-mt2712.
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> ---
>  .../devicetree/bindings/rtc/rtc-mt2712.txt         | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
