Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8ADF17CF
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 Nov 2019 15:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mjBdaXlpk/hy9i9mEoqqJCxzWlraSoPEw/Bk2oAxfeM=; b=i1korlVh4kg02acD9C6Z0FrSE
	Rk6CKWEbUA8ZwttSpqPnD4P4jXhNX1J0z2QmNxMJnBMHkikU7A4jDqeKhVRqb4DC+enZt5GgI3OtV
	zqS/2FOZmIgy9Mwvcp7OOQ4NPQYBj1bYgS+CCRXsXeDi36+/Ra3hGzvBwLLckX/Wl63WgruyHIUlU
	C/RpaABbyHQaW8+W189KjPYpOd3DYSJBAMWh0KH6fKWFjG6wXVuPzyvfLmY0LXhMX/3/ukDY2BJ2w
	l9/ft9J8fSXB0oHGWDaRupUr8CxV/3Alec7+HjiQmt75QWQnSy1nBMWFaPbzdAWU7dNmirBc0o9pF
	eIjIFf5uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLrC-00025P-10; Wed, 06 Nov 2019 14:00:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLr8-00024j-4K; Wed, 06 Nov 2019 14:00:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id k13so5883451pgh.3;
 Wed, 06 Nov 2019 06:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UvEQPlgNntu5xDhWWjdGG8aF5fTT2jE/Ghs/m5Amugo=;
 b=qZvh2RbZGAn0/40waTQ4dfxuNE2rYbIBbRHIL4Uc7IJeUiEewlhsPV7+h2dIwb1bZD
 qXSudTfgp9hGjKnAhe0AneetDCIOAEUXEX+fIRk9YF1cyshj++yfPzJ2qW0+qkZGSluG
 xX27scD1R7gSNT5EWQsaN3BzAg0bKfaUG9lA/qewlnGVNcwclfiiD5yNuSJeJSNFch37
 zF9FHFKaccF8hnxR2+IOKOEB3CB5439KHZGRMknhqcARYQQrRSiJ9K4fnEa0MrI4NBXB
 r4h5RLJyaggEvue7EnsvKPvjh/ApmQIUC6ncc49KcrLwLyQJ36BoC9oGspY1qD9TKgho
 V9NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UvEQPlgNntu5xDhWWjdGG8aF5fTT2jE/Ghs/m5Amugo=;
 b=BkjbcMYajIasa11xrzZifsWForE7YIdlG3c7ji3eYFyhwji/rajp0UXRWZNdhlS4yu
 50W9aSYnT183c0LGx1svuIYe8qRpmZAQrYMPGmNiLC86skjm0cWJidy43ycbBfBeVTO9
 OtdKjtSejmrZEC2NeIMM5l+gmjTlsQwb3pm+CERpZ93JfvMsYo/u33Y5NEQXSJkul+hf
 2hUIgwVqOkWMdigMX3pcJZz5JNbupBGb9UDvPuskYyaxA2tUUcNHS3f5VwhuUDHhusoX
 ogMZXEWzweZGZppl91EPNkuZFzjhWpLWFs6vrfGW7DBT4W+BaiN/kghDzcPyOjh3C8yP
 YoHw==
X-Gm-Message-State: APjAAAXnJraOAqjRWbwINuzR9SANLQ29vUZbdabCcSK9CB87/aYBqVPI
 RHfXpdKXNl7tng2sSsgIowkaD1eHoS8=
X-Google-Smtp-Source: APXvYqwCinmIq97PqdsCPhkzjdzmlKDIdyL7ey1C1o7R7J3ia74aVuhihRKyUAYx7O1NUr1GDI0WCg==
X-Received: by 2002:a62:1514:: with SMTP id 20mr3482112pfv.217.1573048817095; 
 Wed, 06 Nov 2019 06:00:17 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w11sm18360031pgp.28.2019.11.06.06.00.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 06:00:16 -0800 (PST)
Subject: Re: [PATCH 01/28] usb: common: change usb_debug_root as static
 variable
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
References: <8cb137d5376b4e317dc22dcb9e81a1125b781f8f.1573008519.git.chunfeng.yun@mediatek.com>
 <79fd2ebd-b8c6-ee00-c71e-782475a20de6@roeck-us.net>
 <1573031491.18464.70.camel@mhfsdcap03>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <2e793636-04a6-8589-b4a5-259f79a5ea02@roeck-us.net>
Date: Wed, 6 Nov 2019 06:00:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573031491.18464.70.camel@mhfsdcap03>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_060018_172565_672D3932 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Wolfram Sang <wsa@the-dreams.de>, Yangtao Li <tiny.windzz@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 bcm-kernel-feedback-list@broadcom.com,
 David Kershner <david.kershner@unisys.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Cristian Birsan <cristian.birsan@microchip.com>, linux-media@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Mathias Payer <mathias.payer@nebelwelt.net>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-mediatek@lists.infradead.org, Minas Harutyunyan <hminas@synopsys.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org, Biju Das <biju.das@bp.renesas.com>,
 Felipe Balbi <balbi@kernel.org>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-usb@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Dmitry Torokhov <dtor@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 11/6/19 1:11 AM, Chunfeng Yun wrote:
> On Tue, 2019-11-05 at 20:03 -0800, Guenter Roeck wrote:
>> On 11/5/19 7:15 PM, Chunfeng Yun wrote:
>>> Try to avoid using extern global variable, and provide two
>>> functions for the usage cases
>>>
>>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>> ---
>>>    drivers/usb/common/common.c | 16 ++++++++++++++--
>>>    include/linux/usb.h         |  5 ++++-
>>>    2 files changed, 18 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
>>> index 1433260d99b4..639ee6d243a2 100644
>>> --- a/drivers/usb/common/common.c
>>> +++ b/drivers/usb/common/common.c
>>> @@ -293,8 +293,20 @@ struct device *usb_of_get_companion_dev(struct device *dev)
>>>    EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
>>>    #endif
>>>    
>>> -struct dentry *usb_debug_root;
>>> -EXPORT_SYMBOL_GPL(usb_debug_root);
>>> +static struct dentry *usb_debug_root;
>>> +
>>
>> I don't think it is a good idea to declare this variable static
>> before all its uses are removed. This patch will leave the system
>> in a non-compileable state until all patches of the series have
>> been applied.
> Yes, you are right, I'll fix it, may be split into two patch
> 
>>
>> I am curious. What is the rationale for this change ?
>> Did exported variables run out of favor ?
> Personally, I think it's good practice to avoid global varibale,
> it may not a good reason.

Personally I don't think it is a good reason at all. When you are done,
someone else may come in and declare the opposite, re-introduce the global
variable, and drop the new functions as unnecessary.

This is ok for new code, but I think we should leave existing code alone
unless it is broken and needs to get fixed. This is not the case here.

Thanks,
Guenter

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
