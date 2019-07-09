Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F62063737
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jul 2019 15:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqFYjsEXj5rhRquYQ+qWtrKEoNwU2C7YEpniaAOzy94=; b=H/wsdspjEBYHfo
	fSE9XxeCm3WZk3v0tRkAg4gcVgT5Qfm4E0HkugAVQSi4XL58kCaeRyM75PK4PegucWH0k/YEO/Abn
	EN2LiGWfb91TNz597gGVjlQ7Tgak/2waASENVUqBRBqWbwIzF90Xs/cWKJL1/w4qYJWig8n1zfWyN
	TpuJwtiI+CISCpRS12MEUY+fmULJB3XJ1Ulv7nDCsL8HT/gaCOEfFwFOVKey5oAz4kmpx43iBCRoy
	rTHqdsYIHRi89cUtDUT4NmCAFIDHv7PhJiE5d1nWETgVE/+arRQ0xvUYaVV3DOrSBG071tN4KZs1v
	arYu0O3UkmWOWbjT4pRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqS7-00066c-Ns; Tue, 09 Jul 2019 13:46:39 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqRr-0005vi-Rw; Tue, 09 Jul 2019 13:46:25 +0000
Received: from [IPv6:2001:983:e9a7:1:10f:829c:8d05:60ea]
 ([IPv6:2001:983:e9a7:1:10f:829c:8d05:60ea])
 by smtp-cloud7.xs4all.net with ESMTPA
 id kqRbhm0bA0SBqkqRch39E3; Tue, 09 Jul 2019 15:46:12 +0200
Subject: Re: [PATCH 0/5]Add support for mt2701 JPEG ENC support
To: Xia Jiang <xia.jiang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Rick Chang <rick.chang@mediatek.com>
References: <20190709032103.10291-1-xia.jiang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <79316488-30fd-7ff3-7598-d29f85f663ab@xs4all.nl>
Date: Tue, 9 Jul 2019 15:46:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190709032103.10291-1-xia.jiang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJOEIUcU2sXWd9bC50a4eYZ5LTEqfEC1JRULW/bkWFrKdVBQ/lekp5KR2UKQdl9uV4VWVClgZWcLqUO4U/SIIm7ISiTjndpkJheBiYNaEAFvQfVeC1hE
 qDSQfIJmk/pjXs8utQp3DTtOqUIptglNMx5+x4W/J5vYwRdieV76rYwt1uzqXQP6js809vDQcbILwA5sHqYWI/2J/6a9b45DeDh3orTZ/MxP8kPO9df14mwJ
 S1MxCRveuwBZtb6R/KFayiMT4RsCwFGoULDHt6TnGD9ginkNVzqp/JANQXm3ffjpGyQ1B89xPCMKOXpqGVRCjFN5k+PEhwSEztmjFZeK0NzNE2i/wB5ClqDe
 RDVeE6Da5JzSxbV288V5nLRHHD6Iiw12bgt4gA4/tVRdbP21dSIhdfhVjemZJW0GaP9t/FwrwVa8YWaW5MKuFSuJDMJGTiu3OKl1FSShYw12gq2WUYai9KS5
 Uve2BsE7IGAhi4w20a4KGIzBzy/c++Y+EoLyagdfByRhV2fiHdnmHVYINifeHHB/H/FnuteLO9LZyev32Lf9q+ICby6ut90xUSvvun/Rww+WE7yrbYjgWhRf
 fU5md9AtQ7NlMAtoIsmAr3MWw3oCPUzteY4AB6RKmjSJLgbw/RSmV51M+EYKlibLPDQZJFw/AKh1dPHyyk0cHGJ4novIdqenBjG0Au0Zqz+D5aduPGNIgDoH
 1Zb5Qe7V6I8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_064624_066308_05FABC1C 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 7/9/19 5:20 AM, Xia Jiang wrote:
> This patchset add support for mt2701 JPEG ENC support.
> 
> This is the compliance test result for jpeg dec and enc.
> 
> The JPEG dec log:
> ------------------------------------------------------------
> v4l2-compliance -d /dev/video0
> v4l2-compliance SHA: 08fed4d0edb1492b91d9d1054c36fed95c372eaa, 32 bits

Hmm, the SHA indicates that you are using an old v4l2-compliance version.
Please get the latest code from the v4l-utils git repo.

<snip>

> Buffer ioctls:
>                 fail: v4l2-test-buffers.cpp(713): q.create_bufs(node, 1, &fmt) != EINVAL

This should be fixed: this test tries to create a buffer of half the minimum
size, and the driver doesn't check that it is too small.

Ditto for the encoder.

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
