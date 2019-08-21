Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D61B983BB
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 20:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UT3qi7w3YOss2k42DbLEVh9r1ps1Ia6GL5qSn7nDVGE=; b=KdmTr8+lLn867M
	SRSXNzl+oDAoOwPkdx7fMEG+0yMnpXlOIqXoA2POdRB+jodMyFikkvzVH2DFkA225QFNOrmVdtXgw
	1R2YQBneNRB2wzgOx9DGvzsMXClSH2ltVDbS2rRdaBeLPY9iPKEdeMNAUrNvra1wGujvAHDY3Z/eQ
	1v29TdvnyM6P8z/aOGpBFBijorqB9FeimRzry7VGxzSttx58qvxGP1CU7eTrL3dYsvDEUmCigX+Qu
	oNx3S5zT+bfrcvojPm2jTnm+3645DZrBYTfnKzmuhDUVrDsvI/fqkHvSkrJgt7tWP7g+hTW0dE1lx
	6AMtc9WmsaBz7kAg6fXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VkN-0001aH-MI; Wed, 21 Aug 2019 18:54:15 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Vk3-0001M6-JX; Wed, 21 Aug 2019 18:53:56 +0000
Received: by mail-ot1-f65.google.com with SMTP id m24so3028547otp.12;
 Wed, 21 Aug 2019 11:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iY3AiGAh74iBv32YB3Wm5qEpYXVEPqk770y2+LBrvMk=;
 b=L+0DXqXH1SQ12XROyV8eePq17w50vihuuGw5trnYGWGksdczb8W0AM93iUta0J/E3l
 OWRoFYKpX0MmODCq8IgwESvNFRbF5QEqnGgwD6taxKA1daoTOGOLhTKfU20/SiCXln80
 6q7zi7xzZTwsKBQ6+7C05JwCaqkioHpius6fJhJgwQ3VhNrh0jGSQgiAYaZSAJ04qnJW
 PGjyAwu1ETkpepED9Y1pWDP5BtMSmjabvU7oZxNMvrvLOd2WzqMNXr6SpwwQFpkCrIgb
 w01DdFauf6hSbtxJdO58THWDagA+7aUrxAMzzCJxbFLKbPLVUNAQAb3CoVigEaHR4BBX
 Ud+A==
X-Gm-Message-State: APjAAAX7jlScUjH6tElQGdrCYY636pcPL2KPWEqOBzgAZABqSHHYtP6y
 mPvOiGmEUEDo2ARrI20Sgg==
X-Google-Smtp-Source: APXvYqzuCn8jJD6kzc356GuGt6qLtAZth9pfedf18zFxYFHQ+LLdzv1MrFWlMTPRzvhmjn7loz7L2w==
X-Received: by 2002:a9d:5a11:: with SMTP id v17mr26358857oth.87.1566413634446; 
 Wed, 21 Aug 2019 11:53:54 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u5sm6352377oic.45.2019.08.21.11.53.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:53:54 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:53:53 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: pwm: pwm-mediatek: Add documentation
 for MT8516
Message-ID: <20190821185353.GA29669@bogus>
References: <20190805125848.15751-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805125848.15751-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115355_665634_BB722124 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Fabien Parent <fparent@baylibre.com>, thierry.reding@gmail.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon,  5 Aug 2019 14:58:47 +0200, Fabien Parent wrote:
> Add the device-tree documentation for the PWM IP on the MediaTek
> MT8516 SoCs.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
