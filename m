Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB44C909EC
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 23:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g+tDe6Qefs2EDFU5VEjTG+BJi98IlDX3/8XqwLZYDk=; b=Mvn2/SjpMhK6Ti
	Psy8TVCoEak3ZXF5w5FuIbcaV5TtoWSrHWYFjpJZvg+TClfnBViUam7y1AFRjg3BjMd153ZhNGHZ3
	iwXwGeDq/ujFwwYlzDqWC1zYiBeWUyvDhClzf++NL47Gj70Jqs+jtmdZfy2l+dVLGdNpR2e9bLRVF
	cyz90eSSwoUvjZMsk5R1DbV1iXqlO7cxaAsnuwXj62H85HwRfhDyBn/HKO/nZEn9tRj+sKIfXnMQr
	vvNbyerNgJf0Vc4pDL+v2NUwrQ7uv2V7AL3kukp+rGA5sJSKNgr+KZ/CHNNyWYXf2fMV7m6kTvk/d
	0eMtQ/clDh/gLz+Cx5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjMU-0004Fx-W1; Fri, 16 Aug 2019 21:02:15 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjMQ-0004Ey-3O
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 21:02:12 +0000
Received: by mail-ot1-f68.google.com with SMTP id c7so10919730otp.1
 for <linux-mediatek@lists.infradead.org>; Fri, 16 Aug 2019 14:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZFxKR576aWu66XIGODf4Dfqh9pMbrp3cn6HjNum0x/A=;
 b=hOF128gugIrE9JIn3NCPt1V0gxFgE18gzI3WP3N67PbXUwy5mNTGKfeWx+mzguY6rK
 uuD3SUtH59YKnkldhKjSqjcGy8e7hDn3sYD3U8bD9fL3sR0cG2w/CTRSE+c29HcbAMWN
 zraluFY+Ud29zPcs7OEgeh99PZCbgy09Pfzn453lOvK8NzOoZvDFYAfhQ6dX+Ov3MGTz
 J1ckLqFbCvuevw2Eg33vAFvsl9tcohAqbNU/Oe9QDlFul5Tq+Jh3pxrVdWQe1hkDLBKU
 JaD9muIhZ+0z3JQ9B8d7lvpu6AIvwZ673b/KmIzOg5P6USz0xWhbUAdt3iAmxgraLDbP
 /qgA==
X-Gm-Message-State: APjAAAWqhyyKP5Td3TVZrAVcs529IPciicLeoLvv7plBMOAKa3aBijhW
 aShs+t++2ztW7Czp2h0NrA==
X-Google-Smtp-Source: APXvYqx2dK3twuUktSJd04/r2aF5V2tGmUhKOx7YAFKtnfAaGx9f/qJ8sIFYoDauwR1vMrY5vHRb/A==
X-Received: by 2002:a9d:590b:: with SMTP id t11mr9386551oth.239.1565989327722; 
 Fri, 16 Aug 2019 14:02:07 -0700 (PDT)
Received: from localhost (ip-173-126-47-137.ftwttx.spcsdns.net.
 [173.126.47.137])
 by smtp.gmail.com with ESMTPSA id 11sm2590891otc.45.2019.08.16.14.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 14:02:07 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:02:05 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v3 7/10] dt-bindings: pwm: update bindings for MT7629 SoC
Message-ID: <20190816210205.GA23351@bogus>
References: <1565940088-845-1-git-send-email-sam.shih@mediatek.com>
 <1565940088-845-8-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565940088-845-8-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_140210_144776_AB18AE1A 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 Sam Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 15:21:25 +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> 
> This updates bindings for MT7629 pwm controller.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
