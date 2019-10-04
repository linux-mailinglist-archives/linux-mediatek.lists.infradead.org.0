Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2D2CB835
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 12:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQIbSVkgaDuYXxgrSUAEPQ8g7W1SRYZN0ftDkNfJiVU=; b=sv1KpgO3dg8fqFjt0JHMfaSjL
	sdecMPP9dm+pQ5BC/pkOsN6L5aXxrJ4BaQacqxBqnsunk9ej3iPFscfU8U1HE80I7n/hG8mP0gseq
	vscNY3Te6fCiBoSfiquLlg7Sd0vvvswWY/F9rJ/nFcI4PKiNRjbQIXFQLTcg0OGz6zLehSc3x//KU
	N+qfIeMcYER6gJYYcOgEGXY2As6S2GemFxL1ZTVskLK2rtyKXJODx/ed4P9aHEhKV2BrKc6shgzkj
	J54kNiLh8LImDXwZTo5Y13cpC76uxSuy6rvU8GqnbXqyu8VqMG6B8Gi+7CH9L84QxzR3JaWqLmsT0
	y2d7dqkhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKnr-0004DK-PX; Fri, 04 Oct 2019 10:27:15 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKnh-000455-OQ; Fri, 04 Oct 2019 10:27:07 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A76BFFD8EF33CB53B3BE;
 Fri,  4 Oct 2019 18:26:59 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 4 Oct 2019 18:26:57 +0800
Subject: Re: [PATCH v2 10/22] mtd: spi-nor: Rework write_sr()
To: <Tudor.Ambarus@microchip.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <linux-mtd@lists.infradead.org>, <geert+renesas@glider.be>,
 <jonas@norrbonn.se>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-11-tudor.ambarus@microchip.com>
 <83d62334-bd1c-20b7-3c58-225392c819f8@huawei.com>
 <e5d9b91f-cb86-0b82-5631-af0868ba4796@microchip.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <c703dec2-dd11-5898-83ad-fb06127b6575@huawei.com>
Date: Fri, 4 Oct 2019 11:26:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <e5d9b91f-cb86-0b82-5631-af0868ba4796@microchip.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_032705_963323_6824453F 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 04/10/2019 11:03, Tudor.Ambarus@microchip.com wrote:
> Hi, John,
>
> On 10/04/2019 12:39 PM, John Garry wrote:
>> External E-Mail
>>
>>
>> On 24/09/2019 08:46, Tudor.Ambarus@microchip.com wrote:
>>> +}
>>> +
>>> +/**
>>> + * spi_nor_write_sr() - Write the Status Register.
>>> + * @nor:    pointer to 'struct spi_nor'.
>>> + * @sr:        buffer to write to the Status Register.
>>> + * @len:    number of bytes to write to the Status Register.
>>> + *
>>> + * Return: 0 on success, -errno otherwise.
>>>   */
>>> -static int write_sr(struct spi_nor *nor, u8 val)
>>> +static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
>>>  {
>>> -    nor->bouncebuf[0] = val;
>>> +    int ret;
>>> +
>>> +    ret = spi_nor_write_enable(nor);
>>> +    if (ret)
>>> +        return ret;
>>> +
>>
>> Hi Tudor,
>>
>>>      if (nor->spimem) {
>>>          struct spi_mem_op op =
>>>              SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
>>>                     SPI_MEM_OP_NO_ADDR,
>>>                     SPI_MEM_OP_NO_DUMMY,
>>> -                   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
>>
>> This be SPI_MEM_OP_DATA_OUT() in the current mainline code also, right?

Hi Tudor,

>
> In v5.4-rc1 this is defined as SPI_MEM_OP_DATA_IN, so the Mainline code should
> fail. This looks like a bug. I didn't noticed it when doing the patch.
>
>>
>> I'm testing my under development driver on top of v5.4-rc1, and flash_lock -u is broken.
>
> It's not clear to me, does flash_lock fail with my patches on top of v5.4-rc1?

No, I haven't tested these patches. I'm just testing my out-of-tree 
driver on top of vanilla v5.4-rc1. I'm just mentioning the issue here as 
it seemed like a reasonably appropriate place.

However it looks like I will also need to test on top of these patches.

> Or it fails when testing v5.4-rc1?
>
> Can you test v5.4-rc1 and see if flash_lock works on you flash or not?

flash_lock -u errors for my driver on top of vanilla v5.4-rc1.

When I make the change, as above, flash_lock -u and -l succeed, but I 
can still write to the flash - I need to check that more - it may be my 
buggy driver.

IIRC, it did work for my driver based on v5.3

>
> Please specify which flash do you use, and which controller.

The flash is n25q128a11:
[   14.917868] spi-nor spi-PRP0001:00: n25q128a11 (16384 Kbytes)

As for the driver, it's another HiSilicon SPI NOR controller driver 
which I'm developing - I eluded to it here already: 
https://lore.kernel.org/linux-mtd/c5e063e8-5025-8206-f819-6ce5228ef0fb@huawei.com/

Cheers,
John

>
> Thanks for testing this!
> ta
>



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
