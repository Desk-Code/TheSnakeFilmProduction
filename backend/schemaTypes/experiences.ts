import { defineType } from 'sanity'

export const experiences = defineType({
  name: 'experiences',
  title: 'Experiences',
  type: 'document',
  fields: [
        {
            name:'year',
            title:'Year',
            type:'string'
        },
        {
            name:'works',
            title:'Works',
            type:'array',
            of:[{ type:'workExperience'}]
        },
  ],
})